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

02_Prompt
```
I need to unit test grains in ShoppingApp.Grains.csproj.

1. Please use official docs from Microsoft: Unit testing with Orleans
2. Put xUnit project under test/Tests.ShoppingApp.Grains
3. Add it to ShoppingApp.slnx under test virtual folder
3. Write tests for ShoppingCartGrain 
```

03_Prompt
```
Plesae add task into Azure Pipelines to run test/Tests.ShoppingApp.Grains test project.
```
[Desired result for 03_Prompt: azure-pipelines.yml](03_Continuous_Integration/03_azure-pipelines.yml)