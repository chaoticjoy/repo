#!/bin/sh
perl -p -i -e "s/插件名字/电话助手iOS13破解版/g"  ./packageInfo/template/cydia副本
perl -p -i -e "s/插件的描述文字/在https:\/\/chaoticjoy.github.io\/repo\/other\/%E7%94%B5%E8%AF%9D%E5%8A%A9%E6%89%8B.txt查看授权码/g"  ./packageInfo/template/cydia副本
#支持系统
#perl -p -i -e "s/IOS/IOS:13.5/g"  ./packageInfo/template/cydia副本

#截图
#perl -p -i -e "s/cydia7.png/taobaoyouhuiquan.png/g"   ./packageInfo/template/cydia副本

mv ./packageInfo/template/cydia副本 ./packageInfo/com.xybp888.CallAssist13

cp ./packageInfo/template/cydia样本 ./packageInfo/template/cydia副本