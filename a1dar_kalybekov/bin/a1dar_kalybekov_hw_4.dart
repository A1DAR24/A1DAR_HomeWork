int totalCalls = 0;
void main(){
  //вывод задания №1
  greet();
  greet();
  greet();

  //вывод задания №2
  introduce("Alex", 25);
  introduce("Aidar", 16);
  introduce("Maria",46 );
  //вывод задания №3
  int a = 5;
  int b = 6;
  int num = addNumbers(a, b);
  print("Sum of $a and $b is $num.");

  //вывод задания №4
double result1 = calculateDiscount(price: 100);
print('Final price: \$$result1');

double result2 = calculateDiscount(price: 100, discount: 20);
print('Final price: \$$result2');

double result3 = calculateDiscount(price: 100, discount: 20, tax: 5);
print('Final price: \$$result3');

//вывод глобальной переменной
print(totalCalls);
}

//задание №1
void greet(){
  totalCalls++;
  print('Hello! Welcome to Dart programming!');
}

//задание №2
void introduce(String name, int age){
  totalCalls++;
  print('My name is $name and I am $age years old.');

}
//задание №3
int addNumbers(int a, int b){
  totalCalls++;
  return a + b;
}
//задание №4
double calculateDiscount({required double price, double discount = 0, double tax = 0}){
  totalCalls++;
  double finalPrice = price - (price * discount / 100) + (price * tax / 100);
  return finalPrice; 

}