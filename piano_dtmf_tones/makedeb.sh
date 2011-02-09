#!/bin/bash
PackageName=hk.ndb.piano_dtmf_tones

rm -f *.deb;
../dpkg-deb-nodot ./deb ${PackageName};

