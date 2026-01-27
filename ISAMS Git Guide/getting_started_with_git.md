# Git Essential Setup & Workflow Guide

## 1. Installing Git

### Windows

1. Download from [https://git-scm.com](https://git-scm.com)
2. Run installer
3. Important options:
   - **Editor**: choose **Visual Studio Code**
   - **PATH**: “Git from the command line and also from 3rd-party software”

4. Finish install

Verify:

```bash
git --version
```

---

## 2. Initialize commit editor (VS Code)

This tells Git to open **VS Code** whenever it needs a commit message.

```bash
git config --global core.editor "code --wait"
```

Verify:

```bash
git config --global core.editor
```

Now commands like `git commit` will open VS Code instead of terminal editors.

---

## 3. Initializing a repository (`git init`)

Go to your project folder:

```bash
cd path/to/project
```

Initialize Git:

```bash
git init
```

Result:

- A `.git` folder is created
- Your project is now a Git repository

Check status:

```bash
git status
```

---

## 4. Initialize first commit

### Add all files

```bash
git add .
```

What this does:

- Stages **all new and modified files**
- Does NOT save them yet

Check:

```bash
git status
```

---

### Commit with sign-off (`git commit -s`)

```bash
git commit -s
```

- Opens VS Code for the commit message
- `-s` adds a `Signed-off-by:` line
- Required in some teams and open-source projects

Example commit message:

```
Initial commit
```

Save and close VS Code to complete the commit.

---

## 5. Cloning a repository (`git clone`)

Used when the repository already exists remotely.

```bash
git clone https://github.com/username/repo-name.git
```

This:

- Downloads the repo
- Automatically sets `origin`
- Checks out the default branch

After cloning:

```bash
cd repo-name
```

---

## 6. Undoing the latest commit

### Undo commit but keep changes (most common)

```bash
git reset --soft HEAD~1
```

- Commit is removed
- Files stay staged

---

### Undo commit and unstage changes

```bash
git reset --mixed HEAD~1
```

- Commit removed
- Files stay modified but unstaged

---

### Completely discard commit and changes (dangerous)

```bash
git reset --hard HEAD~1
```

- Everything is gone

---

## 7. Git remote (link to a remote repo)

### Add a remote

```bash
git remote add origin https://github.com/username/repo-name.git
```

### Verify

```bash
git remote -v
```

---

## 8. Pulling from remote (`git pull`)

```bash
git pull
```

This:

- Fetches remote changes
- Merges them into your current branch

Use before pushing if others worked on the repo.

---

## 9. Pushing to remote (`git push`)

### First push

```bash
git push -u origin main
```

- Sets upstream branch
- Needed only once

### After that

```bash
git push
```

---

## 10. Minimal workflow summary

### New repo

```bash
git init
git add .
git commit -s
git remote add origin <url>
git push -u origin main
```

### Existing repo

```bash
git clone <url>
git add .
git commit -s
git pull
git push
```

---

## 11. Commands you should memorize

```bash
git init
git clone
git add .
git commit -s
git reset --soft HEAD~1
git remote add
git pull
git push
```
