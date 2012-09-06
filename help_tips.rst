find dir excluding file dirs:
------------------------------
find . \( -name success -prune \) -o \( -name error -prune \) -o -name "G*" -print

add file to git excluding dirs/files with find :
------------------------------
find . \( -name success -prune \) -o \( -name error -prune \) -o -exec git add {} \;
