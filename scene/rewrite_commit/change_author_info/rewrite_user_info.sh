#!/bin/bash
git filter-branch -f --commit-filter '
	if [ "$GIT_AUTHOR_NAME" = "NAME_TO_GREP" ];
	then
		GIT_AUTHOR_NAME="NEW_NAME";
		GIT_COMMITTER_NAME="NEW_NAME";
		GIT_AUTHOR_EMAIL="NEW_EMAIL_ADDRESS";
		GIT_COMMITTER_EMAIL="NEW_EMAIL_ADDRESS";
		git commit-tree "$@";
	else
		git commit-tree "$@";
	fi' HEAD
