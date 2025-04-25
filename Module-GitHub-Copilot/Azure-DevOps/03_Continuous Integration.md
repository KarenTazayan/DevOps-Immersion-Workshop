# Continuous Integration with GitHub Copilot

01_Prompt
```
I need to install and use ReSharper Command Line Tools (CLT) as a .NET tool on our Ubuntu 24.04 Azure Pipelines Agent.

1. Please show me how to install the ReSharper CLT as a global .NET tool on the agent.
2. I need to pre-install it on the agent once.
2. How can I configure an Azure Pipelines task to run ReSharper CLT on the solution after the build step?
4. Please use the shortest command.
```
[Desired result for 01_Prompt: install-resharperclt.sh](03_Continuous_Integration/01_01_install-resharperclt.sh)  
[Desired result for 01_Prompt: azure-pipelines.yml](03_Continuous_Integration/01_02_azure-pipelines.yml)