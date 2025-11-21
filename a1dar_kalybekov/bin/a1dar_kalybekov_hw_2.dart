import 'dart:io';

void main() {
  //Задание №1:
  print('Enter your age:');
  final int age = int.parse(stdin.readLineSync()!);
  print('enter today\'s temperature:');
  final int temperature = int.parse(stdin.readLineSync()!);

  if (age >= 45 && temperature >= -10 && temperature <= 25) {
    print('You can go for a walk.');
  } else if (age >= 20 && age < 45 && temperature > -28 && temperature < 30) {
    print('You can go for a walk.');
  } else if (age < 20 && temperature > 0 && temperature < 28) {
    print("You can go for a walk.");
  } else {
    print('Stay home.');
  } 

  //Задание №2:
  print('Enter day of week');
  final String day = stdin.readLineSync()!;
  String weekDay = day.toLowerCase();

  switch (weekDay) {
    case 'monday':
      print('It\'s the start of the week!');
      break;
    case 'tuesday':
      print('Keep going, almost weekend!');
      break;
    case 'wednesday':
      print('Keep going, almost weekend!');
      break;
    case 'thursday':
      print('Keep going, almost weekend!');
      break;
    case 'friday':
      print('Weekend is coming!');
      break;
    case 'saturday':
      print('Enjoy your weekend!');
      break;
    case 'sunday':
      print('Enjoy your weekend!');
      break;
    default:
      print('Invalid day.');
  } 
  

  //Задание №3
  print('Enter your password:');
  String password = stdin.readLineSync() ?? '';

  if (password.length == 0) {
    print('Password cannot be empty.');
  } else {
    if (password.length < 6) {
      print('Password too short.');
    } else {
      if (password == 'dart123') {
        print('Access granted.');
      } else {
        print('Wrong password.');
      }
    }
  }
}

