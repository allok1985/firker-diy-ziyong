wget 'https://raw.githubusercontent.com/firkerword/ADB/master/kp.dat' -O files/usr/share/koolproxy/data/rules/kp.dat
wget 'https://raw.githubusercontent.com/firkerword/ADB/master/yhosts.txt' -O files/usr/share/koolproxy/data/rules/yhosts.txt
wget 'https://raw.githubusercontent.com/firkerword/ADB/master/fanboy.txt' -O files/usr/share/koolproxy/data/rules/fanboy.txt
wget 'https://raw.githubusercontent.com/firkerword/ADB/master/easylistchina.txt' -O files/usr/share/koolproxy/data/rules/easylistchina.txt
wget 'https://gitee.com/xinggsf/Adblock-Rule/raw/master/mv.txt' -O files/usr/share/koolproxy/data/rules/mv.txt
wget 'https://raw.githubusercontent.com/firkerword/ADB/master/user.txt' -O files/usr/share/koolproxy/data/user.txt
cp files/usr/share/koolproxy/data/user.txt files/usr/share/koolproxy/data/rules/user.txt
wget 'https://raw.githubusercontent.com/firkerword/ADB/master/koolproxy_ipset.conf' -O files/usr/share/koolproxy/koolproxy_ipset.conf

wget https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt -O- | grep ^\|\|[^\*]*\^$ | sed -e 's:||:address\=\/:' -e 's:\^:/0\.0\.0\.0:' > files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/youku/d' files/usr/share/koolproxy/dnsmasq.adblock
sed -i '/[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}\.[1-9]\{1,3\}/d' files/usr/share/koolproxy/dnsmasq.adblock

