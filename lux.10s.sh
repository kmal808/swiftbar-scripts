#!/bin/sh

LUX_VALUE=$(curl lunarsensor.local/sensor/ambient_light_tsl2591 | jq -r .state)

echo "☀️ $LUX_VALUE lux" 
