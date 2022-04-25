# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] 

### TODO:

- Add Recommended VS Code/ium Extensions

## [2.0.5] - 2022-04-25

### Added

- taskwarrior
    - Add taskwarrior custom location configuration.

### Updated

- xfce4/terminal/terminalrc
    - Update `MiscMenubarDefault` to `FALSE`.

## [2.0.4] - 2022-04-25

### Added

- xfce4/terminal/terminalrc
    - Add xfce4-terminal configruation.

## [2.0.3] - 2022-04-24

### Added

- yarnrc
    - Add yarnrc config to set prefix to $HOME/.local as reference file.

### Updated

- zshrc
    - Add `~/Scripts` to PATH in addition to `~/Binaries/Scripts`.

## [2.0.2] - 2022-04-23

### Added

- git/.gitconfig
    - add git aliases

## [2.0.1] - 2022-04-23

- Decided to re-add vscode as part of the config files, since only `settings.json` was the only thing needed.

### Added

- vscode/settings.json
  - re-add vscode config file as only `settings.json` basic defaults (not including mostly extension-dependent configration).

- git/.gitconfig
  - add git global config to watch changes and modify.

### Updated

- Updated CHANGELOG version numbers for clarity.

## [2.0.0] - 2022-04-22

- Major updates to file structure and newly reinitialised repository.
- Minor changes to some config files to update for the current system.

### Updated

- Entire File Structure
- i3/config
    - fix to current monitor setup
    - revise fonts
- polybar/config
    - fix to current monitor setup
    - modify hard drive buttons
    - revise fonts
- zshrc
    - move all aliases to a separate file
- kitty/kitty.conf
    - update fonts
- nvim
    - update plugin list and sync configuration settings with vim
- vim
    - remove plugin configuration settings and sync configuration settings with nvim
- BG.[jpg|png]
    - move to config folder to have consistent BG file location
- Scripts
    - update scripts folder to only contain necessary self-made scripts for general use
- Templates
    - add more templates to Templates folder

### Added

- zshrc
    - Add candy-24h sort-of customised theme
- bashrc
    - Add bashrc with source to alias file
- fehbg
    - finally add fehbg file to its own folder
- Thunar
    - add thunar config to persist current thunar configuration
- screenlayout
    - add screenlayout for reference of monitor setups
- gtkrc
    - GTK custom configuration on top of lxappearance
- btop
    - add btop config file

### Removed

- VSCode/ium 
    - Remove vscode/ium config, as it is too complex to manage
- alacritty
    - remove alacritty config, as I don't use it anymore

## [1.1.3] - 2021-08-04

- added archiso Scripts as individual folder
- Currently Backupped at this timepoint:

```diff
+ archisoScripts  
  StowPackages
      |-- alacritty
      |-- bash
      |-- codium
      |-- fish
      |-- i3wm
          |-- i3
          |-- i3status
          |-- .fehbg Script
          `-- polybar
      |-- kitty
      |-- nvim
      |-- polybar
      |-- rofi
      |-- Scripts
      |-- Templates
      |-- vim
      `-- zsh
```




## [1.1.2] - 2021-06-22

- Finished custom polybar config
- Currently Backupped at this timepoint:

```diff
  StowPackages
      |-- alacritty
      |-- bash
      |-- codium
      |-- fish
      |-- i3wm
          |-- i3
          |-- i3status
          |-- .fehbg Script
-         `-- polybar
      |-- kitty
      |-- nvim
+     |-- polybar
      |-- rofi
      |-- Scripts
      |-- Templates
      |-- vim
      `-- zsh
```

### Changed

- Move polybar configuration as its own StowPackage, and added and updated it.
- Changed the 'What have I Backupped Here?' section as a CHANGELOG file instead.

### Added

- Updated and somewhat polished polybar colour scheme (subject to change).

## [1.1.1] - 2021-06-07

- Currently Backupped at this timepoint:

```diff
  StowPackages
      |-- alacritty
      |-- bash
      |-- codium
      |-- fish
      |-- i3wm
          |-- i3
          |-- i3status
          |-- .fehbg Script
          `-- polybar
      |-- kitty
+     |-- nvim
+     |-- rofi
      |-- Scripts
      |-- Templates
      |-- vim
      `-- zsh
```

### Added

- Rofi StowPackage dotfile config
- Nvim StowPackage dotfile config

## [1.1.0] - 2021-05-31

- A revamped version 1 that uses stow.
- Currently Backupped at this timepoint:

```diff
- ~/.
-   |-- i3wm
-       `-- i3
-   |-- zsh
-   `-- vim
+ StowPackages
+     |-- alacritty
+     |-- bash
+     |-- codium
+     |-- fish
+     |-- i3wm
+         |-- i3
+         |-- i3status
+         |-- .fehbg Script
+         `-- polybar
+     |-- kitty
+     |-- Scripts
+     |-- Templates
+     |-- vim
+     `-- zsh
```

### Added

- Modified the entire structure as StowPackages instead of in a git bare repository
- Now has a wiki page on how to stow these files.
- Included other dotfiles to backup, like kitty and nvim

## [1.0.0] - 2020-09-06

- First version.
- Currently Backupped at this timepoint:

```diff
+ ~/.
+   |-- i3wm
+       `-- i3
+   |-- zsh
+   `-- vim
```

### Added

- Initialise git bare repository for aforementioned backupped dotfiles.
