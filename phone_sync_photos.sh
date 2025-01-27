#!/usr/bin/env bash

# Create temporary mount directory
mkdir $HOME/tmp_phone
# Mount using go-mtpfs
go-mtpfs $HOME/tmp_phone &

# Pause to give dir a chance to mount
sleep 2

# Sync photos - Change source and destination to fit your needs
# Note, you need to escape any spaces in the source and destination directories
rsync -avP $HOME/tmp_phone/Internal\ shared\ storage/DCIM/Camera/ $HOME/Pictures/phone/

# Unmount temp directory
fusermount -u $HOME/tmp_phone
# Remove temp directory
rmdir $HOME/tmp_phone


