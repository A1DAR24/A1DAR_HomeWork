import 'Device.dart';
import 'Adjustable.dart';
import 'BatteryPowered.dart';
import 'SmartLamp.dart';
import 'SmartSpeaker.dart';
import 'SmartThermostat.dart';

void main(){
  List<Device> device = [
    SmartLamp('Lamp', 56),
    SmartSpeaker('Speaker', 32),
    SmartThermostat('Thermostat', 14)
  ];

  for (var device in device){   
    device.showInfo();
    device.turnOn();

    if(device case Adjustable adjustable){
      adjustable.increase();
    }
    if(device case BatteryPowered batteryPowered){
      batteryPowered.showBattery();
    }
  }

  print('All devices processed.');
}