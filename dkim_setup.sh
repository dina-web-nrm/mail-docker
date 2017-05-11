#!/bin/bash
# what is dkim , http://www.dkim.org/
# https://github.com/tomav/docker-mailserver/wiki/Configure-DKIM 
# https://addons.mozilla.org/en-US/thunderbird/addon/dkim-verifier/
docker run --rm \
  -v "$(pwd)/config":/tmp/docker-mailserver \
  -ti tvial/docker-mailserver:2.2 generate-dkim-config
