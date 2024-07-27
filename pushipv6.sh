#!/usr/bin/env bash
NIC_NAME=wlan0
SAVE_FILE=.v6addr
REMOTE_USER=demo
REMOTE_HOST=demo.example.com

PUBLIC_IPV6=$(ip address show ${NIC_NAME} | grep "inet6" | grep -v "fe80::" | awk '{ print $2 }' | awk -F"/" '{print $1}')

ssh ${REMOTE_USER}@${REMOTE_HOST} "echo \"${PUBLIC_IPV6}\" > ${SAVE_FILE}"