#!/bin/sh

export TEMP_STORE=/tmp/
export VOLUME_MOUNT=$1
export ERRORLOG=errorlog.$(date)

echo "Copying application model files to $VOLUME_MOUNT"

if [[ -d "$TEMP_STORE" ]]; then
	cp -r $TEMP_STORE/* /home/alfresco/$VOLUME_MOUNT/
fi

echo "Model files copied, removing temporary folder"

rm -r $TEMP_STORE
