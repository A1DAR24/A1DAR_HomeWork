void main() {
  //задание №1
  // Выстовляем переменные с данными
  String name = 'Aidar';
  int age = 16;
  String city1 = 'Bishkek';
  String profession = 'Student';
  String hobby = 'computer games';
  //вывод в консоль
  print('Hello! My name is $name');
  print('I am $age ' + 'yers old and I live in $city1');
  print('My profession is $profession');
  print('In my free time, I enjoy $hobby');

  //задание №2
  double salary = 10000; //зарплата в месяц
  double yearsSalary = salary * 12; //доход за год
  double bonusSalary = yearsSalary * 1.1; // доход с премией в 10%
  //вывод в консоль
  print("My yearly income: $yearsSalary USD.");
  print("My yearly income with 10% bonus: $bonusSalary USD.");

  //задание №3
  String text = " Knowledge is power, but practice makes perfect. ";
  print(text.trim());
  print(text.toUpperCase());
  print(text.replaceAll('practice', 'experience'));
  print(text.contains('power'));

  //задание №4
  int apples = 14;
  int people = 6;
  print('Each person gets ${apples ~/ people} apples.');
  print('Apples left: ${apples % people}.');

  //задание №5
  int currentYear = 2025;// текущий год
  int myAge = 16; // мой возраст
  int myYear = currentYear - myAge; // год моего рождения
  //вывод в консоль
  print('I was born in $myYear');

  //задание №6
  var city2 = "Bishkek";
  final country = "Kyrgyzstan";
  const planet = "Earth";
  city2 = 'Naryn';
  //country = 'Japan'; они не изменяются
  //planet = 'Mars'; они не изменяются
  print('City: $city2');
  print('Country: $country');
  print('Planet: $planet');


  
}