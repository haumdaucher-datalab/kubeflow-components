#!/bin/bash
mkdir -p /root/.config/
cat << EOF > /root
[telegram]
token = ${TOKEN}
chat_id = ${CHAT_ID}
EOF

telegram-send $1