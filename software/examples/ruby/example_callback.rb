#!/usr/bin/env ruby
# -*- ruby encoding: utf-8 -*-

require 'tinkerforge/ip_connection'
require 'tinkerforge/bricklet_ambient_light_v2'

include Tinkerforge

HOST = 'localhost'
PORT = 4223
UID = 'XYZ' # Change to your UID

ipcon = IPConnection.new # Create IP connection
al = BrickletAmbientLightV2.new UID, ipcon # Create device object

ipcon.connect HOST, PORT # Connect to brickd
# Don't use device before ipcon is connected

# Set Period for illuminance callback to 1s (1000ms)
# Note: The illuminance callback is only called every second if the
#       illuminance has changed since the last call!
al.set_illuminance_callback_period 1000

# Register illuminance callback (parameter has unit Lux/100)
al.register_callback(BrickletAmbientLightV2::CALLBACK_ILLUMINANCE) do |illuminance|
  puts "Illuminance: #{illuminance/100.0} Lux"
end

puts 'Press key to exit'
$stdin.gets
ipcon.disconnect
