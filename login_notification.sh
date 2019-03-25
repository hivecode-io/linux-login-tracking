#!/bin/sh

#	This script aims to notify about unauthorized access to your Linux server
#	To start using it:
#	1. 	Create "Linux tracking solution" (custom solution) at hivecode.io, you will get tracking URL (e.g. https://hivecode.io/asset/Pp/PpAyhFq97wAt)
#		Note:	URL type should be selected as webhook 
#	2. 	Replace $TRACKING_URL with Hivecode generated URL
#	3. 	Copy and paste result file in /etc/profile.d/login_tracking.sh


###	You need replace the value in quotes with your tracking URL
TRACKING_URL="replace_with_your_url"
###

IP=${SSH_CLIENT%% *}
curl -s "${TRACKING_URL}?ip=${IP}" > /dev/null

