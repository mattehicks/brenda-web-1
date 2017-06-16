#!/usr/bin/env bash


config() {

#git configure

echo "git config util"

#todo
#enter git ssh keys
#enter origin 
# find repos

}

help() {

echo "Simple script to deploy this repo to github"

}

git add .

git status

BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
#echo "branch: ${BRANCH}"

echo "Push changes to ${BRANCH}? <y>"
read response

case "${response}" in
    y | yes | "")
   PUSH="true"
    echo "pushing changes."
    shift
    ;;
    n | no)
    PUSH="false"
    echo "exitiing"
    shift
    ;;
esac

if [ "${PUSH}" = "true" ]; then
read -p "Commit message: " commitMessage
git commit -m "$commitMessage"
git push origin "${BRANCH}"

#add options to specify branch

fi

echo done






