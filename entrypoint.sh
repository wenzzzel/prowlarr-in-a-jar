#!/bin/sh
/app/download-config.sh # Download latest prowlarr config backup and extract it
exec /init              # Start prowlarr as the main process