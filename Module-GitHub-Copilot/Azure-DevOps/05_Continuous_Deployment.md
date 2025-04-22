Now we need to orgnize the continuous deployment process of our project to Azure.

01_Prompt
```
Generate a Bicep template named infrastructure.bicep inside the deploy/ directory.
Requirements:

Accept one parameter, imageName, that receives the full image tag for ShoppingApp stored in our Azure Container Registry (ACR).

Use that image to deploy an Azure Container App.

Include any minimal supporting resources the ACA needs (e.g., Log Analytics workspace, Container App Environment, ACR credentials).

Add clear comments for every parameter and resource.  

Use Azure resouce name recommendations from here: https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
```
[Desired result for 01_Prompt: acr.bicep](05_Continuous_Deployment/01_infrastructure.bicep).

02_Prompt
```
Add the latest job named Deploy_Infrastucture_And_Application into the current yml pipilene which deploy infrastructure.bicep to the azure by using the current Azure service connection.
```
[Desired result for 02_Prompt: azure-pipelines.yml](05_Continuous_Deployment/02_azure-pipelines.yml).