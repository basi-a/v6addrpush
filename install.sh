#!/usr/bin/env bash

cp pushipv6.sh /usr/local/bin/
cp pushipv6.timer /etc/systemd/system/
cp pushipv6.service /etc/systemd/system/
chmod +x /usr/local/bin/pushipv6.sh
systemctl daemon-reload
systemctl enable pushipv6.timer --now