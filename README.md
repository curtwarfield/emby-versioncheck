# emby.version.check
This bash script that will automatically check for new versions of [Emby Server](https://emby.media/) and then alert you via [Pushover, LLC](https://pushover.net/).

## Assumptions

The script makes the following assumptions:
 - You are running your Emby Server on the Linux platform.
 - You have a Pushover account and the [Android](https://play.google.com/store/apps/details?id=net.superblock.pushover), [IOS](https://apps.apple.com/us/app/pushover-notifications/id506088175?ls=1) or [Desktop](https://pushover.net/clients/desktop) application setup for push notifications.
## Usage

1. Download the script:

~~~
curl -O https://raw.githubusercontent.com/curtwarfield/emby.version.check/master/embyversioncheck.sh    
~~~

2. Add your [Pushover](https://pushover.net) `API Token` and `User Key` to the following lines in the script:

~~~
  --form-string "token=" " \ 
  --form-string "user=" " \
~~~

3. Make sure you paste these in between the quotes **" "** and save your changes.

4. Make the script executable:

~~~
chmod +x embyversioncheck.sh
~~~

5. Run the script:
~~~
./embyversioncheck.sh
~~~

6. Once you've tested that everything is working as expected you can simply schedule the script to run via [cron](https://en.wikipedia.org/wiki/Cron). 

##### Now every time that a new version of [Emby](https://emby.media/) is released you should automatically get a notification!
