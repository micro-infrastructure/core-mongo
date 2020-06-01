#!/bin/bash
DATE=$(date -d "today" +"%Y%m%d%H%M")
kubectl exec  core-mongo -n process-core -- bash -c "mongoexport --db=process -c=users -o /tmp/users.json"
kubectl cp -n process-core core-mongo:/tmp/users.json ./users_$DATE.json
