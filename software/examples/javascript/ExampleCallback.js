var Tinkerforge = require('tinkerforge');

var HOST = 'localhost';
var PORT = 4223;
var UID = 'XYZ'; // Change to your UID

var ipcon = new Tinkerforge.IPConnection(); // Create IP connection
var al = new Tinkerforge.BrickletAmbientLightV2(UID, ipcon); // Create device object

ipcon.connect(HOST, PORT,
    function (error) {
        console.log('Error: ' + error);
    }
); // Connect to brickd
// Don't use device before ipcon is connected

ipcon.on(Tinkerforge.IPConnection.CALLBACK_CONNECTED,
    function (connectReason) {
        // Set period for illuminance callback to 1s (1000ms)
        // Note: The illuminance callback is only called every second
        //       if the illuminance has changed since the last call!
        al.setIlluminanceCallbackPeriod(1000);
    }
);

// Register illuminance callback
al.on(Tinkerforge.BrickletAmbientLightV2.CALLBACK_ILLUMINANCE,
    // Callback function for illuminance callback (parameter has unit Lux/100)
    function (illuminance) {
        console.log('Illuminance: ' + illuminance/100.0 + ' Lux');
    }
);

console.log('Press key to exit');
process.stdin.on('data',
    function (data) {
        ipcon.disconnect();
        process.exit(0);
    }
);
