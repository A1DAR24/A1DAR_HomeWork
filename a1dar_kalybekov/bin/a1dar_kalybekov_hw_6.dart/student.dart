import 'person.dart';

enum subject {math, physics, english, history }

class Student extends person {
  Map<subject, double> marks;
  double total = 0;

  Student(String fullName, int age, bool isMarriad, this.marks) : super(fullName, age, isMarriad);

  void showMarks(){
    double sum = 0;
    print(fullName);
    for (var entry in marks.entries){
      print('${entry.key}:' );
      print(entry.value);
      sum += entry.value;
    }
    total = sum / marks.length;
    print('Average mark:$total');
  }

  @override
  void introduce(){
    super.introduce();
    print('Average mark: $total');
  }
}