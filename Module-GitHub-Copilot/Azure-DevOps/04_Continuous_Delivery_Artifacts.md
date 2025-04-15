# Continuous Delivery with GitHub Copilot and Azure

Now we need to containerize our project so it can be deployed as a container image artifact to Azure Container Registry. Here’s the roadmap:

1. Install Docker, Azure CLI, and Bicep on the Ubuntu 24.04 agent.
2. Containerize the ShoppingApp .NET 9 project.
3. Deploy Azure Container Registry using Azure Pipelines.
4. Implement versioning with GitTools
5. Build and push the ShoppingApp to Azure Container Registry.

01_Prompt
```
Please provide a script for installing Docker, Azure CLI, and Bicep on an Ubuntu 24.04 agent.
```
[Desired result for 01_Prompt](04_Continuous_Delivery_Artifacts/01_install-docker-and-azure-cli.sh).

Containerize the ShoppingApp .NET 9 project.
02_Prompt
```
Please, containerize the ShoppingApp .NET 9 project.
```
[Desired result for 02_Prompt](04_Continuous_Delivery_Artifacts/02_shopping-app-dockerfile).

03_Prompt
```
Please provide me the detailed instructions how to deploy Azure Container Registry using Azure Pipelines when:

1. I have an existing azure subscribtion
2. Use the best practices of naming azure resources
3. Use Azure Bicep as an IaC and keep it in "deploy" folder in the root of the solution
4. You should pass ACR URL to the next job as a variable in the pipeline
```
[Desired result for 03_Prompt: acr.bicep](04_Continuous_Delivery_Artifacts/03_01_acr.bicep).
[Desired result for 03_Prompt: acr.parameters.json](04_Continuous_Delivery_Artifacts/03_02_acr.parameters.json).
[Desired result for 03_Prompt: azure-pipelines.yml](04_Continuous_Delivery_Artifacts/03_03_azure-pipelines.yml).

04_Prompt
```
How do I implement versioning with GitTools in Azure Pipelines?
```
[Desired result for 04_Prompt: GitVersion.yml](04_Continuous_Delivery_Artifacts/04_01_gitVersion.yml).
[Desired result for 04_Prompt: azure-pipelines.yml](04_Continuous_Delivery_Artifacts/04_02_azure-pipelines.yml).

05_Prompt
```
Now you should build and publish the ShoppingApp image by using
ACR login data and GitVersion.SemVer as a tag.
```