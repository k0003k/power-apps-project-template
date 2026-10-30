# Implement Task

Implement the approved plan.

Before implementation:

1. Reconfirm the relevant development standards.
2. Follow the approved implementation plan.
3. For Power Apps Canvas App changes:

   * Use the available `canvas-app` authoring skill and Canvas Authoring MCP tools.
   * Use `src/` as the project-standard Canvas App working directory.
   * Ensure the current Power Apps Studio coauthoring session is successfully synchronized before making implementation changes.
   * Do not treat `.pa.yaml` files as ordinary text source files outside the Canvas App authoring workflow.
   * If the required Canvas authoring tools or synchronization are unavailable, report the limitation and do not make Canvas App implementation changes.
4. Make the smallest necessary change required by the approved plan.

Applying Canvas App changes:

1. Split the changes into stages.
   * Use about 10 property changes per stage (typically 3–4 stages per implementation step).
   * Order stages by dependency: App formulas and UDFs, screen-level properties, input controls, then data-bound galleries.
   * A change of only one or two properties may be applied as a single stage.
   * Before applying each stage, define verification strings: formula fragments that must exist in `src/` after the stage is applied.
2. Apply each stage in this order:
   1. Edit only the properties that belong to the stage.
   2. Run `compile_canvas` on `src/`.
   3. Wait about 30 seconds so that Power Apps Studio finishes applying the change.
   4. Run `sync_canvas` on `src/`.
   5. Search the synchronized files for the verification strings. Do not reread whole files.
   6. Proceed to the next stage only when all verification strings are present. The synchronized files are the base for the next stage.
3. If verification fails:
   * Do not resend the same batch of changes.
   * Split the stage further to isolate the failing part.
   * If it still fails, stop and report the stage, the missing strings and what was tried.
4. Never compile local files that may be older than the current Studio state. Synchronize first.
5. If the session expires or returns HTTP 401, reconnect and synchronize. Treat all unverified changes as lost and re-apply them from the first unverified stage.
6. Restore from a backup only per screen file. Never overwrite the whole `src/` directory with a backup.
7. After each verified stage, ask the user to save the app in Power Apps Studio (Ctrl+S). Never instruct the user to close or reload Studio without saving.

After implementation:

1. Validate the implementation against the relevant requirements and development standards.
2. Use the validation capabilities provided by the Canvas App authoring workflow, including compilation checks when available.
   * Run the app checker and accessibility checks once, after all stages are verified, and review only the results for the changed screens and formulas.
3. Run any other available checks or tests relevant to the change.
4. Confirm that the local source under `src/` represents the resulting Power Platform state.
   * The implementation is complete only when post-synchronization verification has passed for every stage. A successful compilation alone does not mean that the change has been applied.
5. Report any deviation from the approved plan or development standards.
