#!/bin/bash

if [ ! -f ${PASSWORD_FILE} ]; then
  pwgen 16 1 > ${PASSWORD_FILE}
  chown ${DEVELOPER_USER}:${DEVELOPER_GROUP} ${PASSWORD_FILE}
  chmod 600 ${PASSWORD_FILE}
fi

echo ${DEVELOPER_USER}:$(cat ${PASSWORD_FILE}) | chpasswd
usermod -aG sudo ${DEVELOPER_USER}
