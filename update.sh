#!/bin/sh
apt-ftparchive packages ./debs/ > ./Packages;
#sed -i -e '/^SHA/d' ./Packages;
bzip2 -c9k ./Packages > ./Packages.bz2;
printf "Origin: 小卒的自用源\nLabel: xiaozu\nSuite: stable\nVersion: 1.0\nCodename: xiaozu\nArchitecture: iphoneos-arm\nComponents: main\nDescription: 包括小卒备份的插件及对应版本的ipa\nMD5Sum:\n "$(cat ./Packages | md5sum | cut -d ' ' -f 1)" "$(stat ./Packages --printf="%s")" Packages\n "$(cat ./Packages.bz2 | md5sum | cut -d ' ' -f 1)" "$(stat ./Packages.bz2 --printf="%s")" Packages.bz2\n" >Release;
ls ./debs/ -t | grep '.deb' | perl -e 'use JSON;use URI::Escape; @in=grep(s/\n$//, <>); $count=0; foreach $fileNow (@in) { $fileNow = "./debs/$fileNow"; $size = -s $fileNow; $debInfo = `dpkg -f $fileNow`; $section = `echo "$debInfo" | grep "Section: " | cut -c 10- | tr -d "\n\r"`; $name= `echo "$debInfo" | grep "Name: " | cut -c 7- | tr -d "\n\r"`; $version= `echo "$debInfo" | grep "Version: " | cut -c 10- | tr -d "\n\r"`; $package= `echo "$debInfo" | grep "Package: " | cut -c 10- | tr -d "\n\r"`; $time= `date -r $fileNow +%s | tr -d "\n\r"`; @in[$count] = {section=>uri_escape($section), package=>uri_escape($package), version=>uri_escape($version), size=>uri_escape($size+0), time=>uri_escape($time+0), name=>uri_escape($name)}; $count++; } print uri_unescape(encode_json(\@in))."\n";' > all.packages;
exit 0;
