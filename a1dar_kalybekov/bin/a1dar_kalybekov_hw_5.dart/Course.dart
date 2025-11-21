import 'Student.dart';

class Course {
  String _title;
  List<Student> _students = [];

  Course(this._title);

  void addStudent(Student s) {
    _students.add(s);
  }

  void showStudents() {
    print('Cours: $_title');
    print('Enrolled students:');
    for (var i = 0; i < _students.length; i++) {
      print('${i + 1}. ${_students[i]}');
    }

    print('Total students in course: ${_students.length}');
  }
}
