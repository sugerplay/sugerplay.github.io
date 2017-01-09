argc=$#
argv0=$0
argv1=$1

if [ 0 -eq $argc ]
then
  argv1='publish'
fi

git add --all .
git commit -m "$argv1"
git push origin