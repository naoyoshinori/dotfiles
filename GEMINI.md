---
document_language: English
codebase_language: English
assistant_interaction_language: Japanese
---
# Dotfiles Repository

## Overview

This repository contains personal dotfiles for various tools. The goal is to centralize configuration files to easily set up a consistent environment across multiple machines.

## Managed Configurations

- `config/git/.gitconfig`: Contains Git configurations, including user information, aliases, and other preferences.
- `config/gemini/settings.json`: Contains settings for the Gemini CLI.

## Setup

The setup process involves creating symbolic links from the home directory to the configuration files in this repository.

### Windows

Run the `setup.bat` script with administrator privileges. It will create the necessary symbolic links.

```batch
setup.bat
```

### Linux / macOS

A `setup.sh` script for Linux and macOS is planned but has not been created yet. In the meantime, you can set up the symbolic links manually. For example, to link the Git configuration:

```bash
ln -s "$(pwd)/config/git/.gitconfig" "$HOME/.gitconfig"
```

---

## Note for Developers: Local Development Environment

The `docker-compose.yaml` file included in this repository is **not** part of the core dotfiles. It is provided as a convenience for developing and testing the dotfiles themselves within a self-contained Docker environment. It is not needed for the general use of these dotfiles.
