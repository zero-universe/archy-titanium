#!/bin/bash 

KERNEL="4.5"

#DATE_OLD="20160521"
echo "date:"
read DATE_NEW
#DATE_NEW="20160608"

#KVER_OLD="4.5.5"
echo "old kernel:"
read KVER_OLD
echo "new kernel version:"
read KVER_NEW
#KVER_NEW="4.5.7"

#TIMESTAMP_OLD="201605211442"
echo "grsec's new timestamp:"
read TIMESTAMP_NEW
#TIMESTAMP_NEW="201606080852"


sed -i "s|date=.*|date=${DATE_NEW}|g" PKGBUILD.*

sed -i "s|pkgver=.*|pkgver=${KVER_NEW}|" PKGBUILD.*
sed -i "s|${KVER_OLD}|${KVER_NEW}|" linux-titanium.install*

sed -i "s|_timestamp=.*|_timestamp=${TIMESTAMP_NEW}|" PKGBUILD.*

exit 0
