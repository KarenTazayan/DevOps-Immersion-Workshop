# 1. Generate a Personal Access Token (PAT):
#      Sign in to Azure DevOps and navigate to “User settings” → “Personal access tokens.”
#      Create a new token with at least “Agent Pools (read, manage)” permissions.
# 2. Download and extract the agent:
wget -P ~/Downloads https://vstsagentpackage.azureedge.net/agent/4.252.0/vsts-agent-linux-x64-4.252.0.tar.gz
mkdir myagent && cd myagent
tar zxvf ~/Downloads/vsts-agent-linux-x64-4.252.0.tar.gz
# 3. Configure the agent:
./config.sh --unattended \
  --url https://dev.azure.com/your_organization \
  --auth pat \
  --token YOUR_PERSONAL_ACCESS_TOKEN \
  --pool Default \
  --agent $(hostname) \
  --acceptTeeEula
# 4. Run the agent:
./run.sh