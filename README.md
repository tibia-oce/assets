# Git Large File Storage (Git LFS) Setup

This repository contains files that are tracked using Git Large File Storage (Git LFS). Git LFS is an extension for Git that allows you to manage large files such as binaries, media assets, and other large objects more efficiently by storing them outside your main Git repository.

## Important Notes

- Ensure that Git LFS is installed on your machine before working with this repository.
- Contributors to this repository must also have Git LFS installed to avoid issues when pulling or pushing large files.

## Prerequisites

Before you can clone, pull, or push changes to this repository, you need to have Git LFS installed on your machine.

### Installation

To install Git LFS, follow the instructions below based on your operating system:

- **macOS**:
  ```bash
  brew install git-lfs
  ```

- **Linux**:
  ```bash
  sudo apt-get install git-lfs
  ```

- **Windows**:
  Download and run the Git LFS installer from https://git-lfs.github.com.

### Initial Setup

Once Git LFS is installed, you need to initialize it in your repository. This only needs to be done once:

```bash
git lfs install
```

## Usage

### Cloning the Repository

When cloning this repository, Git LFS will automatically download the large files:

```bash
git clone https://github.com/tibia-oce/assets.git
```

### Adding New Large Files

To add new large files to the repository, use the following steps:

1. Track the file with Git LFS:

```bash
git lfs track "filename.ext"
```

2. Add the file and the `.gitattributes` file to the repository:

```bash
git add .gitattributes filename.ext
```

3. Commit the changes:

```bash
git commit -m "Add large file using Git LFS"
```

4. Push the changes to the remote repository:

```bash
git push origin main
```

### Pulling and Working with Large Files

When you pull changes from the repository, Git LFS will automatically handle the large files:

```bash
git pull origin main
```
