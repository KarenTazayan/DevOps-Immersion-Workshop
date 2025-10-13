@description('The name of the Azure Container Registry')
param acrName string

@description('The SKU of the Azure Container Registry')
@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param acrSku string = 'Standard'

@description('The location of the Azure Container Registry')
param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2025-04-01' = {
  name: acrName
  location: location
  sku: {
    name: acrSku
  }
  properties: {
    adminUserEnabled: true
  }
}

output acrLoginServer string = acr.properties.loginServer
