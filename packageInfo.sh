#!/bin/sh
perl -p -i -e "s/插件名字/choidy/g"  ./packageInfo/template/cydia副本
perl -p -i -e "s/插件的描述文字/防注入。/g"  ./packageInfo/template/cydia副本
#支持系统
#perl -p -i -e "s/IOS/IOS:13.5/g"  ./packageInfo/template/cydia副本

#截图
#perl -p -i -e "s/cydia7.png/taobaoyouhuiquan.png/g"   ./packageInfo/template/cydia副本

mv ./packageInfo/template/cydia副本 ./packageInfo/com.cydiabc.choicy

cp ./packageInfo/template/cydia样本 ./packageInfo/template/cydia副本