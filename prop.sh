BASE=~/CM12/CM12/vendor/Infinix/X553/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' p-files.txt`; do
DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
  fi
cp ~/CM12/system/$FILE $BASE/$FILE
done

./setup.sh
