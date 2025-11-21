void main() {
  //задание №1
  for (var i = 1; i <= 30; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FezzBuzz');
    } else if (i % 3 == 0) {
      print('Fezz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }
  }

  //задание №2
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];
  int nums = 0; // сумма всех положительных чисель
  int numsCount = 0; // количество положительных чисель
  for (var num in numbers) {
    if (num < 0) {
      continue;
    } else {
      nums += num;
      numsCount++;
    }
  }
  //проверяет наличие положительных чисел
  if (numsCount == 0) {
    print('No positive numbers.');
  } else {
    print('Positive numbers count: $numsCount');
    print('Average of positive numbers: ${nums / numsCount}');
  }

  //Задание №3
  Map<String, int> fruits = {'Apple': 5, 'Banana': 2, 'Mango': 7, 'Orange': 0};
  fruits.forEach((key, value) {
    if (value > 0) {
      print('Available: $key ($value pcs)');
    }
  });
}
