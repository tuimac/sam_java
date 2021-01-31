#!/bin/bash

PJTDIR='src'
GITREPO='serverless_loca'

# Create Project initial directory
cd ${GITREPO}
sam init --no-interactive \
        --app-template hello-world \
        --runtime java11 \
        --dependency-manager maven \
        --package-type Zip \
        --name ${PJTDIR}

# Start local API Gateway
cd ${PJTDIR}
sam local start-api --host 0.0.0.0
