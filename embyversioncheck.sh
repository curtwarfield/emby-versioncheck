#!/bin/bash

wget --quiet -P /tmp https://github.com/MediaBrowser/Emby.Releases/releases

cat /tmp/releases | grep tree | head -1 | awk '{print $2}' > /tmp/pruned
sed 's/Emby.Releases//' /tmp/pruned | sed 's/MediaBrowser//' | sed 's/hfer//' | sed 's/tree//' | sed 's/!=//' > /tmp/pruned2
cat /tmp/pruned2 | sed 's/href=//' > /tmp/pruned3

LATESTVERSION=`cat /tmp/pruned3 | tr '"////' " " | awk '{print $1}'`

CURRENTVERSION=`cat /var/lib/emby/logs/embyserver.txt | grep "Emby Server Version" | awk '{print $8}'`

echo $CURRENTVERSION


if [ "$CURRENTVERSION" != "$LATESTVERSION" ]; then
curl -s \
  --form-string "token=" " \
  --form-string "user=" " \
  --form-string "message=A new version of Emby is now available" \
  https://api.pushover.net/1/messages.json
fi

rm /tmp/releases
rm /tmp/pruned
rm /tmp/pruned2
rm /tmp/pruned3
