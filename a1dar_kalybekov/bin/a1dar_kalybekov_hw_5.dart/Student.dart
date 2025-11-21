class Student {
  final String _name;
  int _grade;
  double _averageScore;

  //Конструкторы
  Student(this._name, this._grade) : _averageScore = 0.0;
  Student.withScore(this._name, this._grade, this._averageScore);

  //Геттеры
  String getName() {
    return _name;
  }

  int get grade => _grade;
  double get averageScore => _averageScore;

  //Сеттер
  set averageScore(double newScore) {
    if (newScore > 0 && newScore <= 100) {
      _averageScore = newScore;
    }
  }

  void displayInfo() {
    print("Name: $_name, Grade: $_grade, Average score: $_averageScore ");
  }

  String toString() {
    return _name;
  }
}