#!/bin/sh
cd $(dirname "$0")

find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDNAME/$1/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDPRETTYNAME/$2/g" {} \;
find . -type f -not -wholename "*.git*" -exec sed -i "s/SEDBRANDING/$3/g" {} \;
git add -A

git mv full_SEDNAME.mk "full_$1.mk"

git rm -f "$0" && git commit -m "Initial commit for device $2 by $3"
