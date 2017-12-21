#!/bin/sh

# Script to stop kafka connect in our (Polopoly) test-environment

PIDS=$(ps ax | grep -i 'org.apache.kafka.connect.cli.ConnectDistributed' | grep java | grep -v grep | awk '{print $1}')

if [ -z "$PIDS" ]; then
  echo "No kafka connect distributed to stop"
  exit 1
else
  kill -s KILL $PIDS
fi
