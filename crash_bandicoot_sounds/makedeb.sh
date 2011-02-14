#!/bin/bash
PackageName=com.modmyi.crash_bandicoot_sounds

rm -f *.deb;
../dpkg-deb-nodot ./deb ${PackageName};

