BOOKMARK_DIR=~/bookmarks
bookmark=$1
shift

cd $BOOKMARK_DIR

if [ -x "./$bookmark" ]; then
  "./$bookmark" "$@" | xargs sensible-browser
else
  echo "No such bookmark $bookmark" && exit 1
fi
