<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletAmbientLightV2.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletAmbientLightV2;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change to your UID

// Callback function for illuminance callback (parameter has unit Lux/100)
function cb_illuminance($illuminance)
{
    echo "Illuminance: " . $illuminance / 100.0 . " Lux\n";
}

$ipcon = new IPConnection(); // Create IP connection
$al = new BrickletAmbientLightV2(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Set Period for illuminance callback to 1s (1000ms)
// Note: The illuminance callback is only called every second if the
//       illuminance has changed since the last call!
$al->setIlluminanceCallbackPeriod(1000);

// Register illuminance callback to function cb_illuminance
$al->registerCallback(BrickletAmbientLightV2::CALLBACK_ILLUMINANCE, 'cb_illuminance');

echo "Press ctrl+c to exit\n";
$ipcon->dispatchCallbacks(-1); // Dispatch callbacks forever

?>