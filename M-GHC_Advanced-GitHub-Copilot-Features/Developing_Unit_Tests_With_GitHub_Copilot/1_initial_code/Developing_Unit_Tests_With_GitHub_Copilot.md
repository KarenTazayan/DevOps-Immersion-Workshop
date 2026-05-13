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

The prompt bellow is designed to create a new test project for the ShoppingApp.Grains project using xUnit v3, following the constraints and approach outlined in the DotNet Unit Test Coach agent.

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

The prompt bellow is designed to create a new test project for the ShoppingApp.Grains project using xUnit v3, following the constraints and approach outlined in the DotNet Unit Test Coach agent.

```
Create unit tests for ProductGrain and ShoppingCartGrain

Requirements:
- Name the project if does not exist: ShoppingApp.Grains.Tests
- Add the test project to the existing solution file if not already added (.slnx)
```

Example prompts to try with DotNetTestReviewerReadOnly.agent:

- Create xUnit tests for ShoppingCartGrain checkout success and payment failure paths.
- Add edge-case tests for InventoryGrain when stock is zero or negative.
- Review existing tests for ProductGrain and identify missing behaviors.
- Write tests for OrderGrain state transitions and run the relevant test project.