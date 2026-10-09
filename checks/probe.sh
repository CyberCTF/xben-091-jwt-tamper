#!/bin/sh
# Logging in as user / user (the credentials upstream gives) sets the JWT cookie.
curl -sS --max-time 10 -D - -o /dev/null -d 'username=user&password=user' http://web:5003/login | grep -qi '^Set-Cookie: token='
