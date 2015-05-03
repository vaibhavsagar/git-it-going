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

# Git Ready

## git init, clone
## git status, log, diff
## git add, commit, push
## git fetch, merge, pull
## git revert, reset, checkout
## merge conflicts
## branching

# Questions?
