# Project Development Instructions

## Shared Development Standards

This project uses shared development standards located in the `standards/` directory.

`standards/` is a Git submodule referencing the shared development standards repository.

Use `standards/README.md` as the entry point for shared development standards.

Do not load all development-standard documents by default.

Do not scan or load all files under `standards/`.

First inspect the standard index, then load only the documents relevant to the current task.

For each task:

1. Identify the type and scope of the task.
2. Inspect the project-specific information under `docs/`.
3. Identify only the development-standard documents under `standards/` that are relevant to the task.
4. Read and apply those relevant standards before planning or implementing changes.
5. Do not silently ignore or override a development standard.

Do not assume requirements, architecture, or implementation decisions from other projects apply to this repository.

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

For non-trivial development tasks, use the following workflow in order:

1. Research
2. Plan
3. Implement and Validate

Use the corresponding reusable prompt files under `.github/prompts/` for each phase unless the user explicitly requests a different workflow.

For non-trivial development tasks, do not begin implementation before completing the Research and Plan phases.

## Power Apps Canvas Apps Source of Truth

Power Platform is the authoritative source for the current Canvas App definition.

The `src/` directory contains the local `.pa.yaml` representation used for AI-assisted development, analysis, source control, and review.

When analyzing the current implementation or modifying an existing Canvas App, synchronize the current Power Apps Studio coauthoring session to `src/` using the Canvas Authoring MCP server before relying on the local source files.

Use `src/` as the project-standard working directory for Canvas App source files, even if an external tool or skill uses a different default working-directory convention.

Do not assume that files under `src/` represent the current Power Platform state unless synchronization has been successfully completed for the current development session.

If synchronization cannot be completed, explicitly report that the local source may be stale before performing implementation analysis or making implementation changes.
When implementing changes to a Power Apps Canvas App, delegate Canvas App
authoring operations to the available Canvas Apps authoring skill and use
the Canvas Authoring MCP server for synchronization and modification.

Do not modify `.pa.yaml` files as ordinary text files when the Canvas Apps
authoring skill is available.

## External References

When Power Platform behavior or supported functionality must be verified, prefer Microsoft official documentation.
