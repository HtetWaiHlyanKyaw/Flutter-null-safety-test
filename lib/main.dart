class Student {
  final String name;
  final int? score;

  Student({required this.name, this.score});

  String scoreToPercentage() {
    int totalMarks = 15;
    double percentage = (score?.toDouble() ?? 0) * 100 / totalMarks;
    return score == null ? "Absent" : "${percentage.toStringAsFixed(0)}%";
  }
}

void main() {
  List<Student> students = [
    Student(name: "Mg Mg", score: 12),
    Student(name: "Aung Aung", score: 10),
    Student(name: "Hla Hla", score: 0),
    Student(name: "Thiri"),
    Student(name: "Htet Wai", score: 15)
  ];

  for (var student in students) {
    print(
        "${student.name}'s score percentage is ${student.scoreToPercentage()}");
  }
}
