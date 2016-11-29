#!/bin/bash

aws cloudwatch describe-alarms --state-value INSUFFICIENT_DATA | jq -r '.MetricAlarms[].AlarmName'
