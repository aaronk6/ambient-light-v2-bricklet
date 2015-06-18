import com.tinkerforge.BrickletAmbientLightV2;
import com.tinkerforge.IPConnection;

public class ExampleCallback {
	private static final String HOST = "localhost";
	private static final int PORT = 4223;
	private static final String UID = "XYZ"; // Change to your UID

	// Note: To make the example code cleaner we do not handle exceptions. Exceptions you
	//       might normally want to catch are described in the documentation
	public static void main(String args[]) throws Exception {
		IPConnection ipcon = new IPConnection(); // Create IP connection
		BrickletAmbientLightV2 al = new BrickletAmbientLightV2(UID, ipcon); // Create device object

		ipcon.connect(HOST, PORT); // Connect to brickd
		// Don't use device before ipcon is connected

		// Set Period for illuminance callback to 1s (1000ms)
		// Note: The illuminance callback is only called every second if the
		//       illuminance has changed since the last call!
		al.setIlluminanceCallbackPeriod(1000);

		// Add and implement illuminance listener (called if illuminance changes)
		al.addIlluminanceListener(new BrickletAmbientLightV2.IlluminanceListener() {
			public void illuminance(long illuminance) {
				System.out.println("Illuminance: " + illuminance/100.0 + " Lux");
			}
		});

		System.out.println("Press key to exit"); System.in.read();
		ipcon.disconnect();
	}
}
