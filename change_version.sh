#!/bin/bash

KERNEL="4.8"

echo "date:"
read DATE_NEW

echo "old kernel:"
read KVER_OLD
echo "new kernel version:"
read KVER_NEW

#echo "grsec's new timestamp:"
#read TIMESTAMP_NEW


sed -i "s|date=.*|date=${DATE_NEW}|g" PKGBUILD.*

sed -i "s|pkgver=.*|pkgver=${KVER_NEW}|" PKGBUILD.*
sed -i "s|${KVER_OLD}|${KVER_NEW}|" linux-titanium.install
#sed -i "s|${KVER_OLD}|${KVER_NEW}|" linux-titanium.install.pkg

#sed -i "s|_timestamp=.*|_timestamp=${TIMESTAMP_NEW}|" PKGBUILD.*

exit 0
