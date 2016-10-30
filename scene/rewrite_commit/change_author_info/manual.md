# Change Author (Committer) Names and Email Address in all commit logs.
### Note : You should do it carefully especially in shared project, because it will creates whole new commit tree.    
#### * steps  

1.**Push** all local changes to **remote** (origin) server, and **keep it untouched**.  
2.**Change current directory** to target Git Project root Folder in local environment.  
3.**Backup** your local Repository.  
4.Get snapshot of `git log`  
5.Put and **Customize** `rewrite_user_info.sh` in target Project folder.  
6.Execute `rewrite_user_info.sh`  
7.Compare `git log` with snapshot that taken in step 2.  
8.Check if this operation can be rolled back, with following command `git reset --hard refs/original/refs/heads/master`   
> If this step has failed, Delete local repository and clone from origin is recommended.  
  
9.Redo Step6  
10.Push local changes to Origin, with `git push -f`  
