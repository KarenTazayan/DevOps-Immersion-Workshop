// Accepts the full image tag for ShoppingApp stored in Azure Container Registry (ACR)
@description('The full image tag for the ShoppingApp stored in Azure Container Registry (ACR), e.g. myacr.azurecr.io/shoppingapp:1.0.0')
param imageName string

// Location for all resources
@description('Azure region for all resources')
param location string = resourceGroup().location

// Registry name parameter (extracted from imageName)
@description('Name of the existing Azure Container Registry (without .azurecr.io)')
param registryName string = split(split(imageName, '/')[0], '.')[0]

// Prefixes per Microsoft Cloud Adoption Framework abbreviations:
// log = Log Analytics Workspace, cae = Container App Environment, ca = Azure Container App

// Log Analytics Workspace for monitoring
resource log_shoppingapp 'Microsoft.OperationalInsights/workspaces@2025-02-01' = {
  name: 'log-shoppingapp'
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
  }
}

// Reference existing container registry
resource existingAcr 'Microsoft.ContainerRegistry/registries@2025-04-01' existing = {
  name: registryName
}

// Container App Environment
resource cae_shoppingapp 'Microsoft.App/managedEnvironments@2025-01-01' = {
  name: 'cae-shoppingapp'
  location: location
  properties: {
    appLogsConfiguration: {
      destination: 'log-analytics'
      logAnalyticsConfiguration: {
        customerId: log_shoppingapp.properties.customerId
        sharedKey: listKeys(
          resourceId('Microsoft.OperationalInsights/workspaces', log_shoppingapp.name),
          '2021-06-01'
        ).primarySharedKey
      }
    }
  }
}

// Azure Container App for ShoppingApp
resource ca_shoppingapp 'Microsoft.App/containerApps@2025-01-01' = {
  name: 'ca-shoppingapp'
  location: location
  properties: {
    managedEnvironmentId: cae_shoppingapp.id
    configuration: {
      ingress: {
        external: true
        targetPort: 8080
        transport: 'auto'
        allowInsecure: false
      }
      // Use credentials from the existing ACR
      registries: [
        {
          server: existingAcr.properties.loginServer
          username: existingAcr.listCredentials().username
          passwordSecretRef: 'acr-password'
        }
      ]
      secrets: [
        {
          name: 'acr-password'
          value: existingAcr.listCredentials().passwords[0].value
        }
      ]
    }
    template: {
      containers: [
        {
          name: 'ca-shoppingapp'
          image: imageName
          resources: {
            cpu: json('0.5')
            memory: '1Gi'
          }
        }
      ]
      scale: {
        minReplicas: 1
        maxReplicas: 10
      }
    }
  }
}

// Output the Container App URL
output containerAppUrl string = 'https://${ca_shoppingapp.properties.configuration.ingress.fqdn}'
