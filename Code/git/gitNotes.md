git Notes - Building the Yggdrasil from the Roots Up
======
All notes contained within were taken while engaging with the course here: https://learngitbranching.js.org/

----

# Legend

## CCB
Currently Checked-out Branch

## HEAD
HEAD points to the latest commit in the CCB by default. 
When you commit, the status of the CCB is changed and the change is also observable from the HEAD.

Understanding this is crucial for cherrypicking branches.

----

# Commands

## git commit
Applies a copy of your current checked-out repository to the branch that is current. 
To keep lightweight, branches and new commits simply include diffs from past commits.

### -m "{yourMessage}"
This will add a message alongside the commit. 
It is an invaluable part of working with a team and ensuring the code is readable by others in the future.

## git checkout {branchName}
Grabs the latest version of the named branch.

### -b
This creates a new branch and immediately checks it out. 
i.e. `git checkout -b {branchName}`

### detaching HEAD
git can also point the HEAD to a commit unrelated to the current branch. 
To do so, simply checkout the commit hash rather than the branch name. 

For more on HEAD, see the top of the page.

### ^
The Caret operator can be used to designate that the checked-out commit is a previous commit from a branch. 
For instance, `git checkout master^^` will checkout the commit two previous to the current in the `master` branch.

### `~num`
This will assign head upward a number of parent commits equivalent to the `num` designated.
i.e. `git checkout bugFix~5` will move the HEAD to a commit 5 parents above the current in the designated branch, `bugFix`.
This operator can also be used with relative references, such as HEAD itself.

## git merge {branchName}
Merges the designated branch into the CCB.

Example:
If the user is currently in `master` and there is another branch called `bug-SHK-895`, the following will merge `bug-SHK-895` into master:
`git merge bug-SHK-895`

## git rebase {branchName}
Merges the CCB into the designated branch and commits it as the latest version. 
The designated branch is then re-named as the CCB.

## git log
This command displays a list of the previous commits applied to the CCB.

## git branch
The `branch` command can be used to move a branch's location to another commit/branch.

### -f
This option will _force_ a branch to a commit/branch. 
i.e. `git branch -f master bugFix~3`
Doing the above will move the `master` branch into the `bugFix` branch's parent, 3 commits up. 

## git reset
This will move a branch backward to a designated point _as though the original commits that are being reset never occurred_. 
i.e. `git reset HEAD~2` will undo the past two commits.

reset will only work with local branches (due to its rewriting history properties).

## git revert
In order to do something similar to `git reset` using a publicly shared repo, you will need to use `git revert`. 
This will undo the most recent commit and apply it to the CCB.

i.e. `git revert master` will revert the master branch back one commit, but only if it is where HEAD is. 

## git add
This should be ran before `git commit` so that the changes in the current remote directory are applied.

----

# Example Flow

1. `git clone ssh://...`
2. make needed changes
3. `git add .`										//while pwd is in repo
4. `git commit -m "some message here"`				//always leave a message ;)
5. `git push origin master`							//pushes the pwd to master branch