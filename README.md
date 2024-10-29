
# Assets

This repository contains common assets and sprites for the **Mythbound** server, client, website, and editing tools. Each asset directory is shared across components as indicated, supporting consistency and synchronisation across the entire ecosystem.

| Directory        | Shared By           | Description                                                                      |
|:-----------------|:--------------------|:---------------------------------------------------------------------------------|
| items            | server & map editor | Contains item configurations and definitions used in both server and map editor. |
| monster/monsters | server & map editor | Contains monster definitions and configurations for the server and map editor.    |
| npc              | server & map editor | Contains NPC definitions accessible by the server and map editor.                |
| things/1098      | client & map editor | Stores client and map editor-specific sprites and their data-loading configurations. |
| world            | server & map editor | Includes world data files used by the server and map editor.                     |

## Git Large File Storage (Git LFS)

This repository includes substantial asset files, managed by **Git Large File Storage (Git LFS)** for efficiency. Git LFS handles large objects by storing them outside the main repository, making it easier to work with large assets while keeping the main repository light and responsive.

## Prerequisites

To contribute to or clone this repository, ensure the following are installed:

- **Git:** [Download and install Git](https://git-scm.com/).

- **Git LFS:** Required to pull or push large files within the repository.

### Installation

Install Git LFS according to your operating system:

- **Windows:** Download and run the installer from [Git LFS](https://git-lfs.github.com).

- **macOS:** 
  ```bash
  brew install git-lfs
  ```
  
- **Linux:** 
  ```bash
  sudo apt-get install git-lfs
  ```

### Initial Setup

After installing Git LFS, initialize it once on your machine:

```bash
git lfs install
```

## Usage

### Cloning the Repository

When cloning this repository, Git LFS will automatically download large files tracked by it:

```bash
# Ensure you are in the ./map-editor/data directory if cloning for the map editor
git clone https://github.com/tibia-oce/assets.git
```

### Committing Changes

If you add or update any large files, Git LFS will handle them automatically. Use standard Git commands for commits and pushes, and Git LFS will ensure efficient management of large files.

---

This README serves as a guide to managing and working with shared assets in Mythbound. Please refer to project-specific documentation for additional setup and configuration details.
