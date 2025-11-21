import 'Teacher.dart';
import 'student.dart';


void main(){
  Teacher teacher = Teacher('Jarkyn', 48, true, 7);
  
  teacher.calculateSalary();
  teacher.introduce();
  
  Student student1 = Student(
  'Aidar', 
  16, 
  false, 
  {subject.math:89, subject.physics:78, subject.english:84, subject.history:96});
  
  Student student2 = Student('Mark',
  21,
  true,
  {subject.english:87, subject.history:90, subject.math:76, subject.physics:82});

  
  student1.showMarks();
  student1.introduce();
  student2.showMarks();
  student2.introduce();
}