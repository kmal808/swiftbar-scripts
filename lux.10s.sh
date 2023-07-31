#!/bin/sh

#* Display the value read from a tsl2591 I2C lux sensor => https://www.adafruit.com/product/1980. Used in coordination with a DDC server to adjust monitor brightness. 
#* by Kurt Malley (wut@kmal.rip)

#! metadata
#? <xbar.title>Lux Sensor Output</xbar.title>
#? <xbar.version>0.0.3</xbar.version>
#? <xbar.author.github>kmal808</xbar.author.github>
#? <xbar.author>Kurt Malley</xbar.author>
#? <xbar.desc>Display the value read from a tsl2591 I2C lux sensor</xbar.desc>
#? <xbar.dependencies>curl, jq</xbar.dependencies>
#? <xbar.image></xbar.image>

LUX_VALUE=$(curl 10.10.10.149/sensor/ambient_light_tsl2591 | jq -r .state)

echo "☀️ $LUX_VALUE lx" 
