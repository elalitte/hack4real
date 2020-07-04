#!/bin/bash
apt install -y curl > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1
apache2ctl start
rm -rf /var/www/html
ln -s /root/html/ /var/www/
ip r add 172.16.201.0/24 via 172.16.200.254
while true
do
	curl https://www.google.com/search?sxsrf=ALeKk02njst32Ahwvp1ANPyGWr-iZUoy1A%3A1593357146695&source=hp&ei=WrP4XtOyJ4qKlwTh3a_ICA&q=hacker+rulez&oq=hacker+rulez&gs_lcp=CgZwc3ktYWIQAzIGCAAQFhAeMgYIABAWEB46BwgjEOoCECc6BggjECcQEzoECCMQJzoFCAAQsQM6AggAOgQIABBDOgcIABCxAxBDOgUIABDLAVD0Kli-T2CdVmgEcAB4AIABV4gBvAiSAQIxNZgBAKABAaoBB2d3cy13aXqwAQo&sclient=psy-ab&ved=0ahUKEwjTx-f15aTqAhUKxYUKHeHuC4kQ4dUDCAc&uact=5 > /dev/null 2>&1
	sleep 5
	curl http://172.16.201.2/index.html >/dev/null 2>&1
	sleep 5
done
tail -f /dev/null
