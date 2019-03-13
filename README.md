# Bash script to clean old CloudWatch Alarms

## About

This is a simple bash script, which uses the AWS CLI and jq to get a list of all
CloudWatch alarms that are in "INSUFFICIENT_DATA" state and then delete them.

## Pre-requisites

* [AWS CLI|https://aws.amazon.com/cli/] installed and configured
* [jq|https://stedolan.github.io/jq/] installed

## How to run

From bash, run:

```shell
./clean_old_alarms.sh
```

