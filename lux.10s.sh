#!/bin/sh

#* Display the value read from a tsl2591 I2C lux sensor => https://www.adafruit.com/product/1980
#
# *by Kurt Malley (k@kmal.rip)

#! metadata
#? <xbar.title>Lunar Sensor</xbar.title>
#? <xbar.version>0.0.1</xbar.version>
#? <xbar.author.github>kmal808</xbar.author.github>
#? <xbar.desc>Display the value read from a tsl2591 I2C lux sensor</xbar.desc>
#? <xbar.image>Lunar Sensor</xbar.image>

LUX_VALUE=$(curl lunarsensor.local/sensor/ambient_light_tsl2591 | jq -r .state)

echo "☀️ $LUX_VALUE lx" 
