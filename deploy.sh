#!/bin/zsh
# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo -D # if using a theme, replace with `hugo -t <YOURTHEME>`

printf "开始生成博客网站并上传github"
# Go To Public folder
cd ../public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push


printf "开始上传博客源代码"
# Go to blog source code
cd ../blog

git add .
git commit -m "$msg"
git push
