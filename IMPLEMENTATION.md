# IMPLEMENTATION.md

This document outlines the implementation plan for the "CatchAnything" app.

## Journal

**Phase 1 (2025-10-25):**

*   **Actions Taken:**
    *   Created a new Flutter project.
    *   Removed boilerplate code.
    *   Updated `pubspec.yaml` with the project description and version.
    *   Created `README.md` and `CHANGELOG.md`.
    *   Committed the initial project setup.
    *   Ran `dart fix`, `dart analyze`, and `dart format`.
*   **Learnings:**
    *   The project name must be in `snake_case`.
    *   The `flutter create` command can be used with `--project-name` to specify a project name that is different from the directory name.
*   **Surprises:**
    *   The initial attempt to rename the directory failed because the process was using it.
*   **Deviations:**
    *   Instead of renaming the directory, I used the `--project-name` flag with the `flutter create` command.

## Phase 1: Project Setup and Core Foundation

- [x] Create a new Flutter package in the current directory.
- [x] Remove any boilerplate in the new package that will be replaced.
- [x] Update the description of the package in the `pubspec.yaml` and set the version number to 0.1.0.
- [x] Update the README.md to include a short placeholder description of the package.
- [x] Create the CHANGELOG.md to have the initial version of 0.1.0.
- [x] Commit this empty version of the package to the `feat/initial-setup` branch.
- [x] After completing a task, if you added any TODOs to the code or didn't fully implement anything, make sure to add new tasks so that you can come back and complete them later.

After this phase, we will:

- [x] Create/modify unit tests for testing the code added or modified in this phase, if relevant.
- [x] Run the `dart_fix` tool to clean up the code.
- [x] Run the `analyze_files` tool one more time and fix any issues.
- [x] Run any tests to make sure they all pass.
- [x] Run `dart_format` to make sure that the formatting is correct.
- [x] Re-read the `IMPLEMENTATION.md` file to see what, if anything, has changed in the implementation plan, and if it has changed, take care of anything the changes imply.
- [x] Update the `IMPLEMENTATION.md` file with the current state, including any learnings, surprises, or deviations in the Journal section. Check off any checkboxes of items that have been completed.
- [ ] Use `git diff` to verify the changes that have been made, and create a suitable commit message for any changes.
- [ ] Wait for approval. Don't commit the changes or move on to the next phase of implementation until the user approves the commit.

## Phase 2: Data Models and Domain Layer

- [x] Implement the core data models (`User`, `Creature`, `UOGS`) in the `domain` layer.
- [x] Implement the business logic for the Universal Object Game System (UOGS), including stat calculations and ability frameworks.
- [x] Add unit tests for the domain layer.

After this phase, we will follow the same post-phase steps as in Phase 1.

## Phase 3: Data Layer and AI Integration

- [x] Implement the `Data` layer, including repositories and data sources.
- [x] Integrate with the Gemini 2.5 Flash and Nanobanna APIs for creature generation.
- [ ] Parse the Gemini API response to create a `Creature` object.
- [x] Set up Firebase Firestore and implement the necessary data persistence logic.
- [ ] Configure Firebase project (replace placeholder files).
- [x] Add integration tests for the data layer.

After this phase, we will follow the same post-phase steps as in Phase 1.

## Phase 4: Presentation Layer - Capture and Collection

- [x] Implement the UI for the capture flow, including taking a picture and displaying the generated creature.
- [x] Implement the UI for the creature collection screen.
- [x] Use the BLoC pattern for state management.
- [ ] Handle API key securely.
- [x] Add widget tests for the UI components.

After this phase, we will follow the same post-phase steps as in Phase 1.

## Phase 5: Presentation Layer - Battle System

- [x] Implement the UI for the battle screen.
- [x] Implement the real-time PvP and boss battle logic.
- [x] Add widget tests for the battle UI.

After this phase, we will follow the same post-phase steps as in Phase 1.

## Phase 6: Finalization

- [ ] Create a comprehensive `README.md` file for the package.
- [ ] Create a `GEMINI.md` file in the project directory that describes the app, its purpose, and implementation details of the application and the layout of the files.
- [ ] Ask the user to inspect the app and the code and say if they are satisfied with it, or if any modifications are needed.