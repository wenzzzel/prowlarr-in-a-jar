#!/bin/sh
sshpass -p "$SFTP_PASSWORD" sftp -o StrictHostKeyChecking=no "$SFTP_USERNAME"@$SFTP_SERVER:uploads/prowlarr/prowlarr-latest.zip prowlarr-latest.zip
unzip -o "prowlarr-latest.zip" -d "extracted_backup"
cp extracted_backup/prowlarr.db ../config/
cp extracted_backup/config.xml ../config/