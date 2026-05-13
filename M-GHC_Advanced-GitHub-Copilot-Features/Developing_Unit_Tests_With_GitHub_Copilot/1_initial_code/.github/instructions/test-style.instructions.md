---
description: "Style and quality rules for .NET unit test files: naming, AAA structure, assertion clarity, and deterministic behavior."
applyTo: "**/*Tests.cs"
---
When editing or creating .NET unit tests:

- Test names should follow Behavior_WhenCondition_ThenExpectedOutcome.
- Use clear Arrange, Act, Assert flow.
- Keep one primary behavior assertion per test.
- Avoid timing-sensitive waits and non-deterministic randomness.
- Prefer explicit expected values over broad truthy/falsy assertions.
- Include negative or failure-path tests for externally visible error handling.
- Keep tests independent: no shared mutable state across tests.
- Use data-driven tests only when they improve clarity.
