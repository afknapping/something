#! /bin/bash

echo ""
echo "Source changes:"

git s #assuming you have a got a git alias configured
echo ""
read -p "Show diff? (y/n) " diff
  if [ "$diff" == "y" ]; then
    git diff
  fi
echo ""

# ask for if commit, build and push
read -p "commit, build and push? (y/n) " cbp
if [ "$cbp" == "y" ]; then
  # ask for commit message
  echo ""
  read -p "commit message: " commitmessage
  echo ""
  # build
  echo "Now building..."
  echo ""
  middleman build
  echo ""
  # commit and push build
  cd build
  pwd
  echo "adding files"
  git add -A #assuming your .gitignore is configured
  echo "committing"
  git commit -m "$commitmessage"
  echo "pushing build"
  git push origin
  # commit and push source
  cd ..
  pwd
  echo "adding files"
  git add -A
  echo "committing"
  git commit -m "$commitmessage"
  echo "pushing source"
  git push origin
  echo "DONE."
  g lg
else
  echo ""
  echo "ABORTED."
  echo ""
fi

