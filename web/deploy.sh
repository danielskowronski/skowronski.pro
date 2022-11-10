#!/bin/bash
hugo
bash cv.sh 

hugo deploy

curl -X POST "https://api.cloudflare.com/client/v4/zones/88589d93cc8f76b46b433d4937d5890e/purge_cache" \
     -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'
