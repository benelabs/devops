# DevOps: Day 14

- Git Interview Questions and Answers

* Q: How to create or initialize a git repository
   A: git init
* Git helps tracks changes, and helps with versioning.
* Use git diff to see the changes that is being made to a file.
* Use git status to check for status of your file.
* Whenever git is initialized locally, for us to be able to link it to github so that we can always push to github, we have to add a remote reference. 
* git remote -v: used to check for remote reference to a an existing git file.
* git remote add "<repository name>".
* git clone <repository url>: used to clone a git repository.
* git clone is used to download repository while fork is used to create a copy of a repository.
* using git branching, one can separate the development activities.
* git checkout -b "name-of-branch": to create and switch to a branch.
* git checkout "name-of-branch": to switch to a branch.
* To move code from other branch to the main branch we can:
    - git merge
    - git rebase
    - git cherry-pick (easiest).
* To get the log of a branch, we don't have to switch to that branch. We can simply just do: git log <name-of-branch>.
* on the main branch or whatsoever branch you want to bring it changes to the main branch, just do:
    git cherry-pick <hash of the commit you are bringing in>
* Cherry-pick is easy when there are just like one, two or three commits.
* In a situation where there are multiple commits, it's best one makes use of git merge or git rebase.
* If you don't want to see lengthy logs, once can use: `git log --oneline`.
* To merge from one branch to another. Let's say I am on main branch, and I want to merge feature branch to main branch, I will just do: `git merge feature`
* To use rebase, just: git rebase feature. That is assuming one is on main branch and wants to bring the changes in the feature branch into the main branch.
* merge and rebase practically does the same thing. The only difference is that merge makes all your changes created at the top, that is your changes are created after all your existing changes. That is the changes are not in a linear way. Where as for the rebase will still maintain that linear order. That is which commit comes before which commits, hence it is always advisable to make use of rebase in order to get a linear commit history. 
