#!/bin/sh
mkdir -p /data/.openclaw /home/node/.openclaw
rm -f /data/.openclaw/*.json /home/node/.openclaw/*.json
echo '{"gateway":{"mode":"local","controlUi":{"dangerouslyDisableDeviceAuth":true}}}' | tee /data/.openclaw/openclaw.json /home/node/.openclaw/openclaw.json
exec node dist/index.js gateway --bind lan --port 8080
