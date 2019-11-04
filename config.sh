#!/bin/sh
#(umask  077 ; echo $SSH_KEY | base64 --decode > ~/.ssh/id_rsa)
#Set Remote URL for the repository dynamically using Username and Personal Access Token
export REMOTE_URL=$BUILD_REPOSITORY_URI
REMOTE_URL="${REMOTE_URL:0:8}$GITHUB_USERNAME:$GITHUB_TOKEN@${REMOTE_URL:8}.git/"
git config remote.origin.url $REMOTE_URL
git config core.quotePath false
export TIMESTAMP=$(date +%Y%m%d%H%M%S)
