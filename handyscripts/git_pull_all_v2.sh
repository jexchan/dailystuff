#/bin/bash

# Name          : git updated
# Description   : For each git repository,
#                 call git pull. 

# path variable: Change this to fit your setup
path="/Users/jexchan/personal/opensource/git_repository"
echo $path
seperator="..............."
seperator=$seperator$seperator

git_updater()
{
   pushd $PWD > ~/temp
   if [[ "$PWD" = "$path" ]]; then
      for object in $PWD/*
      do
         printf "%s${seperator}%s\n" "pull" "${object##*/}"
         # if it's not a directory, hide error. If it is a
         # directory, hide pushd output
         pushd $object &> ~/temp
         for file in $object
         do
            if [ -d $file/.git ]
            then
               git pull
            else
               printf "%s${seperator}%s\n" "Not a git repository" "${file##*/}"
            fi
         done
      done
   else
      pushd $path > ~/temp
      git_updater
      printf "\n%s\n\n" "Returning to your working directory"
      pushd -1 > ~/temp
      dirs -c # clear the dir stack when finished
      rm ~/temp # remove temp file
   fi
}

echo "-=start=-"
git_updater
echo "-=end=-"