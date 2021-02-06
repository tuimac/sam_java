#!/bin/bash

PJTDIR='src'
GITREPO='sam_java'

# Create Project initial directory if not exist
cd ${GITREPO}
#if [ ! -e ${PJTDIR} ]; then
#    sam init --no-interactive \
#            --app-template hello-world \
#            --runtime java11 \
#            --dependency-manager maven \
#            --package-type Zip \
#            --name ${PJTDIR}
#fi

# Start local API Gateway
#cd ${PJTDIR}
#sam local start-api --host 0.0.0.0

# mock dumb application
while true; do
    sleep 5
done
