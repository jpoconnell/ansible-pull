#!/usr/bin/env bash

host="`hostname`"

if [ "$PAM_TYPE" != "close_session" ]; then
    subject="Someone logged in to host: $host"
    text="SSH Login: $PAM_USER from $PAM_RHOST on $host"
    curl -s --user 'api:MAILGUN-APIKEY-HERE' \
    https://api.mailgun.net/v3/mg.YOURDOMAIN.com/messages \
        -F from='notify@YOURDOMAIN.com' \
        -F to='notify@YOURDOMAIN.com' \
        -F subject="$subject" \
        -F text="$text"
fi
