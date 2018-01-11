#!/bin/sh

sudo apt install grc

sudo wget ''  /usr/share/grc/conf.log4j

cat <<EOF | sudo tee -a /etc/grc.conf
# docker service logs command
(^|[/\w\.]+/)docker service logs?\s
conf.log4j
EOF
