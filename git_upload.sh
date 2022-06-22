!#/bin/bash

# This will pick up a repository I started and upload it to the git.
# without the MAIN bullshit, I like master branch.
git init
git add *
git commit -m "uploading files to repository"
git remote add origin https://github.com/afa7789/$1.git
git push -u origin master
