#!/bin/sh

curl lunarsensor.local/sensor/ambient_light_tsl2591 | jq .value
