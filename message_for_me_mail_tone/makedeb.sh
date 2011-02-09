#!/bin/bash
PackageName=hk.ndb.message_for_me_mail_tone

rm -f *.deb;
./dpkg-deb-nodot deb ${PackageName};

