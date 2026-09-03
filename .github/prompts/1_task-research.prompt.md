# Research Task

Research the requested task before implementation.

1. Understand the requested change.
2. Inspect relevant project documents under `docs/`.
3. Identify which development standards under `standards/` are relevant.
4. Read only those relevant standards.
5. If the task concerns the current implementation of an existing Power Apps Canvas App:

   * Use the Canvas Authoring MCP server to synchronize the current Power Apps Studio coauthoring session to `src/` before inspecting the implementation.
   * Updating `src/` through synchronization is allowed during Research and is not considered an implementation change.
   * If synchronization cannot be completed, explicitly report that the current implementation could not be verified. Do not rely on potentially stale files under `src/` as the current state.
6. Inspect the synchronized existing implementation.
7. Identify:

   * current implementation behavior
   * differences between the current implementation and the requested change
   * affected components
   * applicable development standards
   * constraints
   * risks
   * unknowns
   * conflicts between project requirements and development standards

Do not make implementation changes during the Research phase.

Produce concise findings that can be used by the planning phase.
