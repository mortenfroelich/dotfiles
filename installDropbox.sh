#!/bin/bash
DROPBOXSERVICE="/etc/systemd/system/dropbox.service"
if [ ! -f "$DROPBOXSERVICE" ]; then
  sudo cp dropbox.service "$DROPBOXSERVICE"
  sudo systemctl daemon-reload
  sudo systemctl enable dropbox.service
  sudo systemctl start dropbox.service
fi
