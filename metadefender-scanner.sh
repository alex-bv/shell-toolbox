#!/bin/bash

# Usage:
# metadefender-scan.sh $PATH $APIKEY, for example:
# metadefender-scan.ps1 /path/to/file.ext 12345678990ABCDEF

hash="$(sha256sum "$1")"
hash="${hash%% *)"
apikey=$2

curl "https://api.metadefender.com/v4/hash/$hash" -H "apikey: $apikey"
