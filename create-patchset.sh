#!/bin/bash
# Get current date and time
timestamp=$(date +'%Y-%m-%dT%H.%M')
working_dir=$(pwd)

# Create a patchset
cd /var/www/html
git diff > $working_dir/patch-"$timestamp".patch
