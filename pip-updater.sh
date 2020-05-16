#!/bin/bash

pip list --outdated | grep -P -o "^\w* " | while read MODULE; do
    echo "Updating $MODULE..." && pip install $MODULE --no-cache-dir 1> /dev/null
done
