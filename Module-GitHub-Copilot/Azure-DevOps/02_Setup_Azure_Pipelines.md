# The Basics of Azure Pipelines with GitHub Copilot

Please select the **ShoppingApp.sln** file in GitHub Copilot chat.

01_Prompt
```
How can I build the selected solution using Azure Pipelines?
```
[Desired result for 01_Prompt](02_Setup_Azure_Pipelines/01_azure-pipelines.yml).

02_Prompt
```
After running, I received the following error: No hosted parallelism has been purchased or granted. To request a free parallelism grant, please fill out the following form https://aka.ms/azpipelines-parallelism-request
```

# Setting Up an Azure Pipelines Agent with GitHub Copilot

03_Prompt
```
Can I run a self-hosted agent on my Windows 11 machine using WSL 2 and Linux?
```
[Desired result for 03_Prompt](02_Setup_Azure_Pipelines/02_install-ubuntu-24-04.ps1).

04_Prompt
```
Okay, I plan to use Ubuntu 24.04.1 as an Azure Pipelines agent to build .NET 9 solutions. What should I do first?
```
Install .NET 9 SDK on Ubuntu 24.04.
[Desired result for 04_Prompt](02_Setup_Azure_Pipelines/03_install-dotnet-sdk.sh).

05_Prompt
```
How do I configure an Azure DevOps agent on my current machine? Please describe the steps.
```
[Desired result for 05_Prompt](02_Setup_Azure_Pipelines/04_configure-self-hosted-agent.sh).

06_Prompt
```
I registered an agent in Azure Pipelines, but my pipeline doesn’t see it.
```
Desired result for 06_Prompt:
```yml
# ...existing code...
pool:
  name: 'Default'  # Replace with your actual pool name
```

07_Prompt
```
I changed the pool name to the right one, but the pipeline still doesn’t run automatically.
```