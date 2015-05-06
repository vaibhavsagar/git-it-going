# git init, clone

1. `cd` to a new directory ("demo") and `git status`.
2. `git init` and then `git status`.
3. `rm -rf .git` and then `git status`.
4. Create a new repo using Github.
5. Pause on setup instructions.


# git status, log, diff

1. Talk about working directory, index, and repository.
2. Add 'First line' to README.md.
3. `git status`.
4. `git log`. Note unhelpful error message.
5. HEAD points to most recent commit, but there are no commits.
6. `git diff` shows difference between index and working copy.

# git add, commit, push

1. `git commit`. File is not tracked until I say so.
2. `git add README.md` and `git status`.
3. `git commit` and exit ("ZZ"). Note that commit was aborted.
4. `git commit -m "Initial commit."`
5. `git status`
6. Why can't Lewin see my changes?
7. `git remote add origin <remote URL>`
8. `git push origin master`
9. View repo in browser.
10. Note that this is the most useful part of the talk.


# git fetch, merge, pull

1. Edit file on Github. Commit directly to master.
2. `git fetch`. Note output.
3. `git status` and `git log`. Note lack of change.
4. `git merge origin/master`.
5. `git status` and `git log`. Note change.
6. `git fetch` + `git merge` = `git pull`
7. Update file again on server.
8. `git pull origin master`.
9. `git status` and `git log`.


# git revert, reset, checkout

1. `git revert HEAD` creates a commit to undo my most recent commit.
2. `git reset HEAD~1` removes the most recent commit. `git status`.
3. `git reset --hard HEAD`. BE SUPER CAREFUL WITH THIS.
4. `git checkout HEAD~2 README.md` changes the file to the way it was two commits ago.
5. `git status` and `git diff`.
6. `git reset --hard HEAD`

# merge conflicts

1. Edit file on client.
2. `git add README.md` and `git commit -m "Update on client."`
3. Edit file on Github. "Update on server."
4. `git pull origin master`. View error message.
5. `git status`.
5. `git reset --merge` and `git status` because that is pretty cool.
6. `git pull origin master` again.
7. `vim README.md`. Fix conflicts. Mention how I always have trouble with this.
8. `git add` and `git commit -m "Integrated changes."`
9. `git push origin master`
10. `git log --graph --oneline`

# branching

1. So far Git is effectively a more complicated SVN
2. But Git was supposed to make all my dreams come true!
3. `gitk &` is a GUI
4. `git checkout -b branch-a master`
5. `git log --graph --oneline --decorate`
6. `vim README.md`. Add a line to the file.
7. `git commit -am "Branch specific commit."`
8. `git checkout master` goes back to the master branch.
9. `git log --graph --oneline --decorate`
10. `git merge branch-a`. Fast-forward = linear commits, move pointer, all good.
11. `git branch -d branch-a` deletes the branch.
12. `git checkout -b branch-b master`
13. `vim README.md`. Add "Merge conflict!" line.
14. `git commit -am "Another branch commit."`
15. `git checkout master`
16. `vim README.md`. Add "Merge conflict?" line.
17. `git commit -am "Commit straight to master."`
18. `git merge branch-b`. Merge conflict as expected.
19. `vim README.md`. Remove conflict markers.
20. `git commit -am "Conflict resolved."`
21. `git log --oneline --graph --decorate`.
