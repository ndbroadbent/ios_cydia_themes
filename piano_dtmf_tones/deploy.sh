#!/usr/bin/env sh
PackageName=hk.ndb.piano_dtmf_tones
phone=root@nathans-iphone
package_file=`ls | grep $PackageName`

echo "== Copying package file..."
scp $package_file $phone:/var/mobile
echo "== Installing..."
ssh $phone "dpkg -r $PackageName; cd /var/mobile; dpkg -i $package_file; ## killall SpringBoard"
echo "===== Done."

