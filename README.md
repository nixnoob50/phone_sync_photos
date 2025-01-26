# phone_sync_photos
A simple script to sync phone images

## Requires
go-mtpfs
``` bash
sudo apt-get install go-mtpfs
```

## Usage
- Mark phone_sync_photos.sh as executable
- Update the source and destination directories in rsync portion of the script to fit your needs
  the default is to copy $HOME/tmp_phone/Internal\ shared\ storage/DCIM/Camera/
  to $HOME/Pictures/phone you will need to either create this dir or update the path in the script.
- Plug your android phone in via usb and put into file tranfer mode.
- run ./phone_sync_photos.sh

## Debug
You can run the first part of this script, and browse to determine the desired source dir for your phone.
``` bash
mkdir $HOME/tmp_phone
go-mtpfs $HOME/tmp_phone &
```
At this point you can browse your phone from ~/tmp_phone to determine the source dir you want to copy from your phone.
When you are done run.

``` bash
fusermount -u $HOME/tmp_phone
rmdir $HOME/tmp_phone
```

To unmount and remove the tmp_phone dir

Enjoy!
