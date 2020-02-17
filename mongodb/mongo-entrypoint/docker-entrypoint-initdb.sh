#!/usr/bin/env bash
echo "Creating mongo users..."
mongo admin --host localhost -u root -p 123456 --eval "db.createUser({user: 'admin', pwd: '123456', roles: [{role: 'userAdminAnyDatabase', db: 'admin'}]});"
mongo admin -u root -p 123456 << EOF
use activityLog
db.createUser({user: 'activity', pwd: '0c4f91d3adc', roles:[{role:'readWrite',db:'activityLog'}]})
EOF
echo "Mongo users created."
