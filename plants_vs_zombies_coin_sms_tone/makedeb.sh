#!/bin/bash
PackageName=com.modmyi.plants_vs_zombies_coin_sms_tone

rm -f *.deb;
../dpkg-deb-nodot ./deb ${PackageName};

