import 'Device.dart';
import 'Adjustable.dart';
import 'BatteryPowered.dart';

class SmartSpeaker extends Device with BatteryPowered implements Adjustable{
  int _volume;

  SmartSpeaker(super.name, this._volume);

  set volume(int newVolume){
    if(newVolume >= 0 && newVolume <=100){
      _volume = newVolume;
    }
  }

  @override
  void turnOn(){
    print('Speaker $name is ON');
  }

  @override
  void turnOff(){
    print('Speaker $name is OFF');
  }

  @override
  void increase(){
    if(_volume <= 95){
      _volume + 5;
    }
  }

  @override
  void decrease(){
    if (_volume >= 5){
      _volume - 5;
    }
  }

  @override
  void showInfo(){
    print('Name: $name, Volume: $_volume');
  }
}