#!/bin/bash

DIR=1T/00001T_B2KCDS300/B2KCDS300
BAK_DIR=1T/00001T_CDS300.bak/B2KCDS300
S3_INBOX=1T/00001T_B2KCDS300/B2KCDS300/s3_inbox

rm -rf /tmp/$S3_INBOX
mkdir -p /tmp/$DIR
mkdir -p /tmp/$BAK_DIR
mkdir -p /tmp/$S3_INBOX

mv /tmp/$DIR/* /tmp/$BAK_DIR
#sshpass -v -p pass scp -P 22 foo@sftp:/upload/ /tmp/1T/00001T_B2KCDS300/B2KCDS300
