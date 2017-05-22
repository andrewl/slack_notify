#!/bin/bash

SLACK_CHANNEL=${SLACK_CHANNEL:-general}
SLACK_USERNAME=${SLACK_USERNAME:-"Slack CLI Notifier "}
SLACK_WEBHOOK_URL=${SLACK_WEBHOOK_URL:-""}

if [ -Z"$SLACK_WEBHOOK_URL" ]; then
  echo "You must define SLACK_WEBHOOK_URL in order to post a message";
  exit 1;
fi

curl -X POST --data-urlencode 'payload={"channel": "#'"$SLACK_CHANNEL"'", "username": "'"$SLACK_USERNAME"'", "text":"'"$1"'",}' $SLACK_WEBHOOK_URL
