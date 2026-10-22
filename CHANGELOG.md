# Changelog
All notable changes to this project will be documented in this file.

## [Unreleased](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.3.4...master)

## [2.3.4 (2026-10-22)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.3.3...2.3.4)

### Added
- Added `CONTRIBUTING.md` with local development and check guidance.
- Added `scripts/check.sh` with TOC, changelog, README, Luacheck, ShellCheck, smoke and release output checks.
- Added `.luacheckrc` for Luacheck configuration.
- Added a CI workflow that runs the checks on pushes and pull requests to `master`.
- Added a CD workflow that packages tagged releases, creates a GitHub release and publishes to CurseForge (requires the `CF_API_TOKEN` secret and `CF_PROJECT_ID` variable).

### Changed
- Renamed the Lua files to use the `MentalApocalypseEmotes_` prefix and updated the TOC accordingly.
- Renamed `Icon.tga` to `MentalApocalypseEmotes.tga`.
- Updated `.gitattributes` and `.gitignore` to exclude development files from release archives and ignore `.tmp/`.
- Updated the supported interface versions to `120100`, `120005` and `120007`.
- Updated `.editorconfig` to keep trailing whitespace in Markdown files.

### Fixed
- Removed an undefined `tooltip` variable from the options panel checkbox.

## [2.3.3 (2026-03-16)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.3.2...2.3.3)

### Changed
- Bumped version due to new patch.

## [2.3.2 (2025-10-09)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.3.1...2.3.2)

### Changed
- Bumped version due to new patch and early Midnight support.

## [2.3.1 (2025-02-19)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.3.0...2.3.1)

### Changed
- Bumped version due to new patch.

## [2.3.0 (2025-01-02)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.2.0...2.3.0)

### Added
- Added new Discord emotes.
- Added missing animated emotes as static emotes
- Added a Baseg emote upon request.
- Added a comment about the emotes that are not from Discord.
- Added note about duplicate emotes in documentation.

### Changed
- Enabled trim trailing whitespace from files.
- Bumped version due to new patch.

## [2.2.0 (2024-08-21)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.1.1...2.2.0)

### Added
- Added a goat emote upon request.

## [2.1.1 (2024-07-19)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.1.0...2.1.1)

### Fixed
- Resolved issue of options initialization.

## [2.1.0 (2024-08-16)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/2.0.0...2.1.0)

### Added
- Added an option to disable the minimap icon.
- Added an options screen for the addon.
- Added remembrance of the position of the minimap icon.

## [2.0.0 (2024-08-06)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.5.0...2.0.0)

### Added
- Added a minimap button to use emotes.
- Added an icon to identify the addon in the Addons option screen.

### Changed
- Renamed the addon and restructured the files.
- Bumped version due to new patch.

## [1.5.0 (2024-08-04)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.4.0...1.5.0)

### Changed
- Bumped version due to new patch.

## [1.4.0 (2024-02-18)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.3.1...1.4.0)

### Added
- Added all newly added emotes.
- Added all animated emotes as static emotes (again).

### Changed
- Bumped version due to new patch.

## [1.3.1 (2023-12-18)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.3.0...1.3.1)

### Fixed
- Resolved issue of error upon initialization.

## [1.3.0 (2023-12-02)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.2.0...1.3.0)

### Added
- Added all newly added emotes.
- Added Christmas emotes for some.

### Removed
- Temporarily removed all animated (static) emotes.

## [1.2.0 (2023-08-04)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.1.0...1.2.0)

### Added
- Added all new non-animated emotes.
- Added all animated emotes as static emotes.

## [1.1.0 (2023-07-25)](https://github.com/jordinbrouwer/MentalApocalypseEmotes/compare/1.0.0...1.1.0)

### Added
- Added all existing non-animated emotes.

### Changed
- Changed the final newline rule to be false.

## 1.0.0 (2023-07-23)

Initial setup of the project to show Mental Apocalypse emotes in World of Warcraft by typing them as you would into Discord.
