Deploy_To_Azure_With_GitHub_Copilot

1. Copy all content from Deploy_To_Azure_With_GitHub_Copilot to a new directoty (sample name: Deploy_To_Azure_With_GitHub_Copilot)
2. Initialize version control by Git
```
git init -b main
```
3. Commit the initial state of newly created source code
```
git add .
git commit -m "Initial commit."
```
4. Open newly created directory with Visual Studio Code
5. Open GitHub Copilot Chat view with Azure IaC Generator.
6. Enter the prompt in the chat input field:

```
Generate a Bicep file and PowerShell deployment script to deploy ShoppingApp.slnx using Azure App Service.

Use Azure CLI commands to deploy the template.
Use predefined sample names for the resources.
Follow Azure resource naming best practices.
Create deployment files in the deploy directory.
```