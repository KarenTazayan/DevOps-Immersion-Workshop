Making_Code_More_Functional_With_GitHub_Copilot

1. Copy all content from 1_initial_code directory to a new directoty (sample name: Making_Code_More_Functional_With_GitHub_Copilot)
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
Rewrite the code in more functional way

Requirements:
- Use CSharpFunctionalExtensions NuGet package by Vladimir Khorikov
- Use Result/Result<T> as explicit success/failure wrapper instead of throwing exceptions.
- Use .NET exceptions only for showing a bag in the system
- Rewrite the code of whole ShoppingApp solution
- Do not apply other functional patterns except mentioned above
```