import 'Device.dart';

class SmartThermostat extends Device{
  int temperature;

  SmartThermostat(super.name, this.temperature);

  @override
  void turnOn() {
    print('Thermostat $name is ON');
  }

  @override
  void turnOff(){
    print('Thermostat $name is OFF');
  }

  @override  
  void showInfo(){
    print('Name: $name, Temperature: $temperature');
  }
    
}