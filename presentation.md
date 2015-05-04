% Git It Going
% Vaibhav Sagar

# Intro

## About this presentation

- Basic introduction to Git
- Contrived toy examples

## About Git

- 'Checkout' and 'Commit' mean different things to SVN
- Has a 'staging area'
```
Working           Staging       .git directory
Directory           Area         (Repository)
   |                 |                |
   |<------------ Checkout -----------|
   |                 |                |
   |-- Stage Fixes ->|                |
   |                 |                |
   |                 |---- Commit --->|
```
- Each commit represents a snapshot of the entire project, not just a delta
```
                         Checkins Over Time
--------------------------------------------------------------->
  +---------+      +---------+      +---------+      +---------+    
  |Version 1|      |Version 2|      |Version 3|      |Version 4|    
  +---------+      +---------+      +---------+      +---------+    
       |                |                |                |         
  +---------+      +---------+      +---------+      +---------+    
  | File A  |      | File A1<-------+ File A1 |      | File A2 |    
  +---------+      +---------+      +---------+      +---------+    
       |                |                |                |         
  +---------+      +---------+      +---------+      +---------+    
  | File B <-------+ File B <-------+ File B  |      | File B1 |    
  +---------+      +---------+      +---------+      +---------+    
       |                |                |                |         
  +---------+      +---------+      +---------+      +---------+    
  | File C  |      | File C1 |      | File C2<-------+ File C2 |    
  +---------+      +---------+      +---------+      +---------+    
```
- Every commit/snapshot has a SHA-1 hash that serves as a UID.

# Git Started

## git init, clone

- **git init** - Create an empty Git repository or reinitialise an existing one
- **git clone** - Clone a repository into a new directory

## git status, log, diff

- **git status** - Show the working tree status
- **git log** - Show commit logs

## git add, commit, push

- **git add** - Add file contents to the index
- **git commit** - Record changes to the repository
- **git push** - Update remote refs along with associated objects

# Git Comfortable

## git fetch, merge, pull

- **git fetch** - Download objects and refs from another repository
- **git merge** - Join two or more development histories together
- **git pull** - Fetch from and integrate with another repository or a local branch

## git revert, reset, checkout

- **git revert** - Revert some existing commits
- **git reset** - Reset current HEAD to the specified state
- **git checkout** - Checkout a branch or paths to the working tree

# Git Nasty

## merge conflicts

## branching

# Questions?
