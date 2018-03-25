#! /bin/bash

for f in chapter*.md; do
	x=`grep -o '\[\^[a-zA-Z0-9_]*\]' $f | sort | uniq`
	echo $x
	(for k in $x; do
		grep -F $k index.md
	done) >> $f
done
