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

Do not assume that files under `src/` represent the current Power Platform state unless synchronization has been successfully completed.

### Research

Before researching the current implementation of an existing Canvas App, use the Canvas Authoring MCP server to synchronize the current Power Apps Studio coauthoring session to `src/`.

Research the synchronized source under `src/` together with project requirements under `docs/` and the applicable development standards under `standards/`.

During the Research phase, use Canvas Authoring MCP only as necessary to obtain or inspect the current implementation state.

Do not modify the Canvas App during the Research phase.

If synchronization cannot be completed, explicitly report that the current implementation state could not be verified. Do not silently rely on potentially stale files under `src/`.

### Implementation

Before implementing changes to an existing Canvas App, synchronize the current Power Apps Studio coauthoring session to `src/` again to ensure that implementation is based on the latest Power Platform state.

When implementing changes to a Canvas App, use the available Canvas Apps authoring skill and Canvas Authoring MCP tools rather than treating the `.pa.yaml` files as ordinary source files.

Use `src/` as the project-standard working directory for Canvas App source files.

If synchronization or the required Canvas authoring tools are unavailable, explicitly report the limitation before making implementation changes.

After implementation, validate the resulting Canvas App and confirm that the local source representation is synchronized with the resulting Power Platform state.

## External References

When Power Platform behavior or supported functionality must be verified, prefer Microsoft official documentation.
