Imports Tinkerforge

Module ExampleCallback
    Const HOST As String = "localhost"
    Const PORT As Integer = 4223
    Const UID As String = "XYZ" ' Change to your UID

    ' Callback function for illuminance callback (parameter has unit Lux/100)
    Sub IlluminanceCB(ByVal sender As BrickletAmbientLightV2, ByVal illuminance As Long)
        System.Console.WriteLine("Illuminance: " + (illuminance/100.0).ToString() + " Lux")
    End Sub

    Sub Main()
        Dim ipcon As New IPConnection() ' Create IP connection
        Dim al As New BrickletAmbientLightV2(UID, ipcon) ' Create device object

        ipcon.Connect(HOST, PORT) ' Connect to brickd
        ' Don't use device before ipcon is connected

        ' Set Period for illuminance callback to 1s (1000ms)
        ' Note: The illuminance callback is only called every second if the
        '       illuminance has changed since the last call!
        al.SetIlluminanceCallbackPeriod(1000)

        ' Register illuminance callback to function IlluminanceCB
        AddHandler al.Illuminance, AddressOf IlluminanceCB

        System.Console.WriteLine("Press key to exit")
        System.Console.ReadLine()
        ipcon.Disconnect()
    End Sub
End Module
