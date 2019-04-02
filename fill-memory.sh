#!/bin/sh
# Use example app restful API to test different scenarios with redis instances

export APP=redis-example-app.cfapps-17.haas-59.pez.pivotal.io

key=$(LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c 12 | xargs)
value=$(LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c 32 | xargs)

curl -X PUT "${APP}/${key}" -d "data=${value}"
