import 'Student.dart';
import 'Course.dart';

void main() {
  Student student1 = Student('Aidar', 2);
  Student student2 = Student.withScore('Sara', 3, 89.0);
  Student student3 = Student('Bob', 4);
  student3.averageScore = 95.6;

  Course dartCourse = Course('Dart Basics');

  dartCourse.addStudent(student1);
  dartCourse.addStudent(student2);
  dartCourse.addStudent(student3);

  dartCourse.showStudents();
}
