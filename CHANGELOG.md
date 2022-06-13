# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased] 

### TODO:

- Add Recommended VS Code/ium Extensions (in separate directory)
- Add Vim-Plugged auto-install script
- Add Zsh auto-install script

## [2.1.7] - 2022-06-13

### Updated

- zsh
	- updated candy-24h theme

## [2.1.6] - 2022-06-13

### Added

- add and track nitrogen configuration

## [2.1.5] - 2022-06-13

### Added

- add and track yay configuration

## [2.1.4] - 2022-06-13

### Updated

- awesome
	- restore current awesome config

- archinstall config
	- add additional packages while restoring awesome config in tandem

## [2.1.3] - 2022-06-13

### Updated

- zsh
	- add the `owo` alias to send to the `$OWO` directory

## [2.1.2] - 2022-06-13

### Added

- add .gitignore file to add a private separated repo for private stuff

### Updated

- awesome
    - update default keybindings to match to preference

## [2.1.1] - 2022-06-13

### Updated

- zsh
    - add the `$OWO` variable as the default location for cindrmons-config-files

## [2.1.0] - 2022-06-13

### Added

- Minor changes to file structure
- return to stow management system
- add zsh and neovim auto-install script skeleton

## [2.0.26] - 2022-06-13

### Updated

- archinstall config
    - refactor and add addiitonal packages
    - separate it on a different folder on root

## [2.0.25] - 2022-06-11

### Updated

- i3
	- refactored i3config to use vim folds

## [2.0.24] - 2022-06-11

### Added

- add startup.wav sound to i3config

## [2.0.23] - 2022-06-11

### Updated

- kitty
	- add iceberg theme
	- fix ssh kitten issue when asking for password

## [2.0.22] - 2022-06-11

### Updated

- nvim
	- update neovim configs to latest configuration

## [2.0.21] - 2022-06-11

### Updated

- screenlayout
	- add a more later version of the current screenlayout

## [2.0.20] - 2022-06-11

### Updated
- zshrc
	- refactor zsh config

## [2.0.19] - 2022-06-11

### Added
- Arch Install Configuration
    - add archinstall configuration generated from `archinstall`

## [2.0.18] - 2022-04-30

### Updated

- nvim
	- add figlet title header and collapsible vim sections on main init.vim.
	- add suda plugin for enabling sudo edits for restricted file access files.


## [2.0.17] - 2022-04-30

### Updated

- nvim
	- add additional plugins and plugin configuration
	- replace comment plugin from `tpope/vim-commentary` to `numToStr/Comment.nvim`

- aliases
	- add kitty ssh kitten alias

### Added

## [2.0.16] - 2022-04-28

### Added

- aliases
	- add shorthand for `task deadlines` --> `whattodo`

## [2.0.15] - 2022-04-28

### Updated

- nvim
	- Add Iceberg theme.
	- Add undofile as part of the config.

## [2.0.14] - 2022-04-28

### Updated

- zshrc
	- Add XDG env vars.

## [2.0.13] - 2022-04-28

- Update alias filename and path location (should now be in $XDG_CONFIG_HOME)

### Updated

- Change .aliases to aliases instead.

- zshrc
	- Update alias path to `~/.config/` instead.

- bashrc
	- Update alias path t `~/.config/` instead.

## [2.0.12] - 2022-04-28

### Updated

- nvim
	- Massive overhaul in terms of configuration:
		- Separated plugins into a different file.
		- add custom configs for each plugin through lua.

## [2.0.11] - 2022-04-26

### Updated

- i3/config
    - Add `task sync` service to autostart every login.

- taskwarrior
    - Update deadline report configuration:
        - Add additional columns for priority
        - Change sort order for due date

## [2.0.10] - 2022-04-25

### Updated

- i3/config
    - update xfce4-terminal to autostart with current tasks using `deadline` report from taskwarrior config.

## [2.0.9] - 2022-04-25

### Updated

- taskwarrior
    - add custom taskwarrior report: deadline -- List of open tasks by due date and urgency.

## [2.0.8] - 2022-04-25

### Updated

- i3/config
    - Add xfce4-terminal to workspace01 (Terminals)

## [2.0.7] - 2022-04-25

### Updated

- i3/config
    - Refactor start-up programs section

## [2.0.6] - 2022-04-25

### Updated

- i3/config
    - Add mpv to workspace14 (Music)

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
