Slack Notify
============

Why?
----
This simple script enables you to post a message into slack from the command line without the need to install a Ruby, Node, PHP application with their boatload of dependencies. 

Install
-------

1. Create an Incoming Webhook on your Slack channel (https://api.slack.com/incoming-webhooks)

2. (Optional) Copy slack_notify.sh to your path.

Usage
-----

Set the environment variable SLACK_WEBHOOK_URL to the url of your Incoming Webhook. Optionally set the environment variables SLACK_CHANNEL and SLACK_USERNAME to the channel and username of the channel to post to and username to post as.

The message to send is passed as the parameter to the script.

Example
-------

Sending "Hello, Slack"

    SLACK_WEBHOOK_URL="https://hooks.slack.com/services/AB12CD34EF/56GH78IJ90/KLMN9876opqr5432stu" slack_notify.sh "Hello, Slack"


Sending "Hello random Channel" to the channel 'random' with the username 'Ran Dom'

    SLACK_CHANNEL="random" SLACK_USERNAME="Ran Dom" SLACK_WEBHOOK_URL="https://hooks.slack.com/services/AB12CD34EF/56GH78IJ90/KLMN9876opqr5432stu" slack_notify.sh "Hello random Channel"


Sending the amount of free space on the boot partition

    FREE_SPACE=`df -h --output=used /boot | tail -n 1` SLACK_WEBHOOK_URL="https://hooks.slack.com/services/AB12CD34EF/56GH78IJ90/KLMN9876opqr5432stu" slack_notify.sh "Boot partition has $FREESPACE free space"

