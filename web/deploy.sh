#!/bin/bash
hugo
bash cv.sh 

hugo deploy

curl -X POST "https://api.cloudflare.com/client/v4/zones/9681da33d75ba73f7effed820323f897/purge_cache" \
     -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'
