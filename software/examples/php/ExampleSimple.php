<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletAmbientLightV2.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletAmbientLightV2;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change XYZ to the UID of your Ambient Light Bricklet 2.0

$ipcon = new IPConnection(); // Create IP connection
$al = new BrickletAmbientLightV2(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Get current illuminance
$illuminance = $al->getIlluminance();
echo "Illuminance: " . $illuminance/100.0 . " lx\n";

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->disconnect();

?>
