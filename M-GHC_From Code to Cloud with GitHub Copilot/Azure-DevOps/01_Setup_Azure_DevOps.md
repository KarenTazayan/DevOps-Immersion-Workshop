# Setting Up an Azure DevOps Environment with GitHub Copilot

01_Prompt
```
Hi, I’m new to Azure DevOps. I want to host my .NET 9 source code in Azure DevOps. Please provide a very concise step-by-step guide.
```
02_Prompt
```
I don’t have an Azure DevOps organization. Where can I create one?
```
03_Prompt
```
I don’t see it. It redirects me to portal.azure.com after I log in. What should I do?
```
Create sample organization, for example: devops-workshop-4. Navigate to it: https://dev.azure.com/devops-workshop-4

04_Prompt
```
I’d like to create a public project, but it appears to be disabled. How can I enable it? Also, what’s the difference between public and private projects?
```

Clone the repo:
```
git clone https://devops-workshop-4@dev.azure.com/devops-workshop-4/ShoppingApp/_git/ShoppingApp
```
05_Prompt
```
Okay, I’ve created the project and cloned it to my local repository. How can I push my code back to the remote repository and set the correct email for the repo?
```