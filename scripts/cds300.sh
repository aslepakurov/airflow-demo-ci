#!/bin/bash

DIR=1T/00001T_B2KCDS300/B2KCDS300
BAK_DIR=1T/00001T_CDS300.bak/B2KCDS300
S3_INBOX=1T/00001T_B2KCDS300/B2KCDS300/s3_inbox

rm -rf /tmp/$S3_INBOX
mkdir -p /tmp/$DIR
mkdir -p /tmp/$BAK_DIR
mkdir -p /tmp/$S3_INBOX

mv /tmp/$DIR/* /tmp/$BAK_DIR
sshpass -v -p $SSH_PASS scp -P 22 $SSH_USER@sftp-ci.verygoodsecurity.io:/www/ /tmp/1T/00001T_B2KCDS300/B2KCDS300
#sshpass -p 'password' scp "demo@test.rebex.net:$DIR/*" /tmp/$DIR/
