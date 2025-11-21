class person{
String fullName;
int age;
bool isMarriad;

person(this.fullName, this.age, this.isMarriad);

String get marriedStatus => isMarriad ? 'Yes' : 'No';

void introduce(){
  print('Hi! My name is $fullName. I am $age years old. Married: $marriedStatus.');
}
}