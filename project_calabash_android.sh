#bin/bash
# path need to end with '/'
for entry in "$1"*.apk
do
  # echo "$entry"
  calabash-android run "$entry" features/wdd
done
