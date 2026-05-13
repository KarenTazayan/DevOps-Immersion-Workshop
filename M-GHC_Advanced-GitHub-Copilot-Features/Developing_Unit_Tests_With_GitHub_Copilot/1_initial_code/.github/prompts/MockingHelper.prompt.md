---
description: "Generate focused .NET mocking setup and verification patterns for unit tests (Moq/NSubstitute/FakeItEasy), including edge-case and failure-path coverage."
agent: ask
---
You are helping author test doubles for .NET unit tests.

Given:
- The target type under test
- Its dependencies
- Desired behavior to validate

Return:
1. Minimal mock setup for the happy path.
2. Mock setup for at least one failure or edge path.
3. Verification examples that assert meaningful behavior (calls, arguments, and counts only when behaviorally relevant).
4. A short note on common pitfalls for this scenario.

Guidelines:
- Prefer readable setups over heavily abstracted helpers.
- Avoid verifying implementation details unless required by behavior.
- Keep assertions strong and specific.
