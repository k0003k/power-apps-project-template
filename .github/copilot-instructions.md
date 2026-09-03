# Project Development Instructions

## Shared Development Standards

This project uses shared development standards located in the `standards/` directory.

`standards/` is a Git submodule referencing the shared development standards repository.

Do not load all development-standard documents by default.

For each task:

1. Identify the type and scope of the task.
2. Inspect the project-specific information under `docs/`.
3. Identify only the development-standard documents under `standards/` that are relevant to the task.
4. Read and apply those relevant standards before planning or implementing changes.
5. Do not silently ignore or override a development standard.

## Priority

Use the following priority when making implementation decisions:

1. Explicit project requirements and architectural decisions under `docs/`
2. Shared development standards under `standards/`
3. Existing implementation patterns in this project
4. General Power Platform best practices

If project requirements conflict with the shared development standards, explicitly identify the conflict before implementation.

## Shared Standards Repository

Files under `standards/` are shared development standards.

Do not modify files under `standards/` as part of normal project implementation.

If project work reveals that a shared standard is incorrect, ambiguous, incomplete, or impractical, report it as a development-standard improvement candidate.

## Development Workflow

For non-trivial development tasks, use the following workflow:

1. Research
2. Plan
3. Implement
4. Validate

Use the reusable prompt files under `.github/prompts/` when appropriate.

## External References

When Power Platform behavior or supported functionality must be verified, prefer Microsoft official documentation.
