Files in this directory are from third-party sources and should not be manually updated with their respective upstreams.  But any other modifications should be done just like regular files.
 
Step to update
==============
 
1. Checkout `third-party` branch and update files.
This is currently a manual step. You may checkout this orphan branch to a temporary location using following commands.
 
```
git clone --branch third-party <repo-url> nballerina-third-party
cd nballerina-third-party
git submodule update --init --recursive
for f in */update.sh; do (cd `dirname $f`; sh update.sh); done
```
Above commands should update the git submodules and downloaded files. Commits you make here will not appear in the main branch, so you may also manually update files in this branch from a third-party upstream. But do not make any modifications that are not present in third-party upstream.
 
Update `mapping.txt` file if needed.
 
Finally commit and push this branch.
 
2. Run `Sync third party` action and merge the PR
 
Go to github `Actions` > `Sync third party` > `Run workflow`
This will create a PR named `[Auto] Update third party files` review and merge the PR.
In rare cases this PR will get conflicted, resolving the conflicts minimally should still preserve the correct authors.
 
How it works
============

Idea is to use git's merge capabilities to do the merging of upstream changes. When doing this, we need the automatic commit to not conflict with a previous auto commit but only with our modifications.
This is done by making sure auto commits are always made on top of another auto commit (except for the first one).

```
                              last commit by bot        
                              |   commit by developer   merge commit  
                              |   |                     |
                              v   v                     v
main                      ----o---o---o----o------------o----------
third-party-update-auto        `---------------o---o---´
third-party                             o - - ´^   ^
                                        ^      |   |
                                        |      |   pr conflict resolution
                                        |       commit made by bot containing changes from update from upstream
                                        update from upstream
```

Limitations
===========
Currently the `github-actions` bot is used to commit, this bot doesn't have permission to create new branches (with workflows). So we'll have to create it manually using :
```
git push origin main:third-party-update-auto
```
This is a one time task.
