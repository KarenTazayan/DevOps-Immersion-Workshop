Azure_MCP_Server_With_GitHub_Copilot

# Connect to Azure from VS Code using Azure MCP Server + GitHub Copilot (Agent Mode)
> Goal: authenticate to Azure and ask Copilot (using Azure MCP Server tools) to do some NL commands.

---

## Prerequisites
- **Visual Studio Code** (or VS Code Insiders)
- **GitHub Copilot** enabled in VS Code
- **Node.js** installed (needed because Azure MCP Server can be started via `npx`)
- Optional but recommended: **Azure CLI** installed and signed in (`az login`) so MCP can reuse your credentials

References:
- [Azure MCP Server in VS Code](https://learn.microsoft.com/en-us/azure/developer/azure-mcp-server/get-started/tools/visual-studio-code)visual-studio-code) 

---

## Step 1 — Install / Enable GitHub Copilot in VS Code
1. Open **VS Code**
2. Go to **Extensions** (Ctrl+Shift+X)
3. Install **GitHub Copilot** (and **GitHub Copilot Chat** if separate in your VS Code build)
4. Sign in to GitHub when prompted

---

## Step 2 — (Recommended) Sign in to Azure locally
This helps Azure MCP Server automatically discover credentials.

1. Open a terminal in VS Code
2. Run:
```
az login
```

## Step 3 — Start the MCP server (if it doesn’t auto-start)

1. Open the Command Palette (Ctrl+Shift+P)
2. Run: MCP: List Servers
3. Select Azure MCP Server
4. Choose Start (or Restart) if needed

> VS Code may ask you to trust the MCP server the first time (expected).

## Step 4 — Open Copilot Chat and switch to Agent Mode

1. Open Copilot Chat
2. Switch the chat mode to Agent
3. Open the Tools list and refresh it if needed
4. Ensure Azure MCP Server appears and is enabled

This is the recommended flow for using Azure MCP Server tools with Copilot Agent mode.

## Step 5 — Ask Copilot to do Azure tasks!

Prompts to try:

```
Use Azure MCP Server to list all Storage Accounts in my subscription. Return a table with: name, resourceGroup, location, kind, sku, allowBlobPublicAccess.
```

```
What is the estimated monthly cost for all Azure Storage accounts?
```

```
Show me App Insights failures for the last 30 minutes.
```

```
Provide performance insights for sql-shoppingapp1-sa1 over the last hour.
```

```
Add a firewall rule to allow my current IP address for sql-shoppingapp1-sa1.
```

```
Generate a Bicep file and deployment script to deploy an Azure App Service container using the mcr.microsoft.com/dotnet/samples:aspnetapp-chiseled image.

Use Azure CLI commands to deploy the template.
Use predefined sample names for the resources.
Follow Azure resource naming best practices.
```