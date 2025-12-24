#!/usr/bin/env bash

rm -rf assets/webbuilder.tar assets/webbuilder.tar.zip
tar -cvf assets/webbuilder.tar web_entry.sh build_badrecovery.sh build_goodsilver.sh encstateful persist postinst unverified busybox/arm busybox/x86 lib/wax_common.sh lib/shflags lib/bin/i386/cgpt lib/bin/i386/sfdisk goodsilver --owner=0 --group=0
cd assets
gzip -k webbuilder.tar
mv webbuilder.tar.gz webbuilder.tar.zip
