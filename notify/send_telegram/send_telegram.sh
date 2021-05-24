#!/bin/bash
mkdir -p /root/.config/
cat << EOF > /root/.config/telegram-send.conf
[telegram]
token = ${TOKEN}
chat_id = ${CHAT_ID}
EOF

telegram-send $@