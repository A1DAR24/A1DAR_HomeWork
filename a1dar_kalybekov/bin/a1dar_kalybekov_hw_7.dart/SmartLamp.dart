import 'Device.dart';
import 'Adjustable.dart';
import 'BatteryPowered.dart';

class SmartLamp extends Device with BatteryPowered implements Adjustable{
  int _brightness;

  SmartLamp(super.name, this._brightness);

  //setter
  set brightness(int newBrightness){
    if(newBrightness > 0 && newBrightness <=100){
      _brightness = newBrightness;
    }
  }

  @override
  void turnOn(){
    print('Lamp $name is ON');
  }

  @override
  void turnOff(){
    print('Lamp $name is OFF');
  }

  @override
  void increase(){
    if(_brightness < 91 ){
      _brightness + 10;
    }
  }

  @override
  void decrease(){
    if (_brightness > 9){
      _brightness - 10;
    }
  }

  @override
  void showInfo(){
    print('Name: $name, Brightness: $_brightness');
  }
}