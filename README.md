# emby.version.check
This bash script that will automatically check for new versions of [Emby Server](https://emby.media/) and then alert you via [Pushover, LLC](https://pushover.net/).

## Assumptions

The script makes the following assumptions:
 - You are running your Emby Server on the Linux platform.
 - You have a Pushover account and the Android, IOS, or Desktop application for notifications.

## Usage

Download the script:

`curl -O https://raw.githubusercontent.com/curtwarfield/emby.version.check/master/embyversioncheck.sh`    

Make it executable:

`chmod +x embyversioncheck.sh`

Then run the script as sudo or root:

`./anonymousvsftp-install.sh`

The installer script configures `/var/ftp/pub` as the default FTP directory. This is the location to store the files that will be available for download.

This is a pre-beta release. New features and enhancements will be introduced in the future.

Additional requests are always welcome!

## Current Feature List

- Installs and configures vsftp as an anonymous FTP server
- Enables and starts vsftpd
- Backs up the original vsftpd.conf file
- Configures a passive port range
- Configures firewalld
- Shows the vsftpd status after completion

## Upcoming Feature List

- Check for the presence of vsftp before installation
- Check for supported distros
