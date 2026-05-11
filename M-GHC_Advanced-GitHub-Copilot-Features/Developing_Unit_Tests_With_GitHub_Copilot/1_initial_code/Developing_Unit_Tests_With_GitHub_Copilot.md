 Develop_Unit_Tests_With_GitHub_Copilot

1. Copy all content from 1_initial_code directory to a new directoty (sample name: Develop_Unit_Tests_With_GitHub_Copilot)
2. Initialize version control by Git
```
git init
```
3. Commit the initial state of newly created source code
```
git add .
git commit -m "Initial commit."
```
4. Open ShoppingApp.slnx vith Visual Studio 2026
5. Open GitHub Copilot Chat view.
6. Enter the prompt in the chat input field:

```
Create a new test project for the ShoppingApp.Grains project using xUnit v3.

Requirements:
- Use xunit.v3 NuGet package for xUnit v3
- Name the project: ShoppingApp.Grains.Tests
- Create the project under a root-level folder: /test
- Use the latest xUnit v3 project template
- Add the test project to the existing solution file (.slnx)
- Create tests only for ProductGrain and ShoppingCartGrain
```