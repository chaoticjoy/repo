#!/bin/sh
perl -p -i -e "s/插件名字/surge4.3.0 破解/g"  ./packageInfo/template/cydia副本
perl -p -i -e "s/插件的描述文字/需要配合特定版本的APP使用，已经将能够支持的最新版本ipa上传到http:\/\/chaoticjoy.github.io\/repo\/ipa\/Surge_4.3.0_CrackerXI.zip 。/g"  ./packageInfo/template/cydia副本
#支持系统
#perl -p -i -e "s/IOS/IOS:13.5/g"  ./packageInfo/template/cydia副本

#截图
#perl -p -i -e "s/cydia7.png/taobaoyouhuiquan.png/g"   ./packageInfo/template/cydia副本

mv ./packageInfo/template/cydia副本 ./packageInfo/com.laxus.surge4

cp ./packageInfo/template/cydia样本 ./packageInfo/template/cydia副本