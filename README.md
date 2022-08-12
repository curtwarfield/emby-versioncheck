# Emby server version check

This `bash` script will automatically check for new versions of the [Emby Server](https://emby.media/) application and then alert you via [Pushover](https://pushover.net/) notification.

## System requirements

 - You are running **Emby Server** on a `Linux` system.
 - You already have a **Pushover** account and the [Android](https://play.google.com/store/apps/details?id=net.superblock.pushover), [IOS](https://apps.apple.com/us/app/pushover-notifications/id506088175?ls=1) or [Desktop](https://pushover.net/clients/desktop) application setup for push notifications.
 
## Usage

1. Download the `bash` script.
~~~
curl -O https://raw.githubusercontent.com/curtwarfield/emby.version.check/master/embyversioncheck.sh    
~~~

2. Add your **Pushover** `API Token` and `User Key` in between the quotes **" "**  in the following lines in the `bash` script:
~~~
  --form-string "token=" " \ 
  --form-string "user=" " \
~~~

3. Make the `bash` script executable.
~~~
chmod +x embyversioncheck.sh
~~~

4. Run the `bash` script.
~~~
./embyversioncheck.sh
~~~

5. Schedule the `bash` script to run automatically via a [cron](https://en.wikipedia.org/wiki/Cron) job for what ever frequency you want to check.
