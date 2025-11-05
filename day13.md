# DevOps: Day 13

- Git branching strategy

Branching strategy is where you have various branches such as:
- Master Branch: kept for active development.
- Feature Branch: used to introduce new breaking changes.
- Release Branch: the branch where our application is built from. Runs end to end functionality test from this branch. So This branch is used to test before releasing to the customer whenever a feature is ready to be released. So here the development work is done, hence it is separated from the master because there will still be active developments going on in the master branch. Which we don't want in the release branch.

Release always happens from the release branch.
