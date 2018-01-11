#!/bin/sh

sudo apt install grc

sudo wget 'https://raw.githubusercontent.com/anlcan/grc/master/conf.log4j' -o /usr/share/grc/conf.log4j

cat <<EOF | sudo tee -a /etc/grc.conf
# docker service logs command
(^|[/\w\.]+/)docker service logs?\s
conf.log4j
EOF
