#!/bin/bash

echo "Starting job to delete INSUFFICIENT_DATA CloudWatch alarms..."

for obseleteAlarm in $(aws --output json cloudwatch describe-alarms --state-value INSUFFICIENT_DATA | jq -r '.MetricAlarms[].AlarmName')
do
  echo "Deleting alarm with name: $obseleteAlarm"
  aws cloudwatch delete-alarms --alarm-name $obseleteAlarm
done
