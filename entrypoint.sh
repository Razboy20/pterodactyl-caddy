#!/bin/bash
sleep 1

cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`exec echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
