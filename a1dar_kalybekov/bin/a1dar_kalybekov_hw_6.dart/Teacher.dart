import 'person.dart';

class Teacher extends person{
  int experience;
  static double _baseSalary = 50000;

  Teacher(String fullName, int age, bool isMarriad, this.experience) : super(fullName,age,isMarriad);

  double calculateSalary(){
    double salary = _baseSalary;
    if(experience > 3){
      for (var i = 0; i > experience - 3; i++){
        salary += salary * 0.05;
      }
    }
    if(isMarriad == true){
      salary += 5000;
    }
    return _baseSalary;
  }

  @override
  void introduce(){
    super.introduce();
    print('Experience: $experience');
    print('Salary: $_baseSalary');
  }
}