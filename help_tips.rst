find dir excluding file dirs:
------------------------------
find . \( -name success -prune \) -o \( -name error -prune \) -o -name "G*" -print
