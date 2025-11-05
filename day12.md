# DevOps: Day 12

- Git and GitHub

- The fundamentals of git and github is version control system.
- The two problems version control systems solve are
  * Versioning.
  * Sharing of code.

- Some of the version control system we have are:
   * CVS: Centralized
   * SVN: Centralized
   * Git: Distributed

- Fork is creating an entire copy of the original source code as your own copy.
- Git is a distributed version control system. And it is an open source tool.
- Github (bitbucket etc.) is a solution that is built ontop of git. Used for project management, keeping of code, code review, comment etc.
- To see everything under git, all the options, simply type `git` on The terminal and Press enter.
- To initialize git, use `git init` this will initialize an empty git repository.
- Every DevOps Engineer should understand the lifecycle of git. Which are the three basic commands of:
   * git add: track file(s)
   * git commit: tell git what changes you have made in those/that file.
   * git push

- git diff: to check for the exact changes that were/was made.
- git log: to check for all the commits for a file/files.


- Lets say you have a project having two versions committed, and then you're asked to return to the first version (first commit), here is what you're supposed to do:
   * use git log to check for all commits
   * copy the commit hash i.e the first commit hash
   * git reset --hard <commit hash>.
 So technically, one can go back to any previous version of His/Her code with git.

- To share code within the distributed system is where github/bitbucket/gitlab comes in. 
 
Thank you!
