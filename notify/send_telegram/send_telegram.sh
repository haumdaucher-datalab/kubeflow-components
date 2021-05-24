#!/bin/bash
mkdir -p /root/.config/
cat << EOF > /root/.config/telegram-send.conf
[telegram]
token = ${TOKEN}
chat_id = ${CHAT_ID}
EOF

echo "Few debug msgs"
echo "\$1: $1"
echo "\$2: $2"
echo "\$3: $3"
echo "\$4: $4"

telegram-send "$*"