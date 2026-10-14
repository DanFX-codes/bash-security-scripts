#!/bin/bash


echo "===== SERVICE STATUS CHECKER====="

service="$1"
if [ "$#" -eq 0 ]; then
echo "Usage: $0 <service-nmame>"
exit 1
fi
if ! systemctl list-unit-files "${service}.service" --no-legend --no-pager | grep -q "${service}.service"; then
echo "Service not found: $service"
elif systemctl is-active --quiet "$service"; then
echo "$service is active"
else
echo "$service is inactive or not running"
fi
