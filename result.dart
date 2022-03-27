//@dart = 2.9
import 'dart:io';

class Student {
  String name;
  int id;
  int obtainMarks;
  List<Subject> subjects;

  Student({this.id, this.name, this.obtainMarks, this.subjects});

  int get obtainedMarks {
    int total;

    subjects.forEach((subject) {
      total += subject.marks;
    });

    return total;
  }

  double get percentage {
    int total = subjects.length * 100;

    return obtainMarks / total * 100;
  }

  String get grade {
    if (percentage > 80) {
      return "A";
    } else if (percentage > 65) {
      return "B";
    } else if (percentage > 55) {
      return "C";
    } else if (percentage > 40) {
      return "D";
    } else {
      return "F";
    }
  }
}

class Subject {
  String name;
  int marks;

  Subject({this.name, this.marks});
}

void main() {
  // List<Student> Student = [
  //   Student(id: 11, name: 'Saad', subjects: [
  //     Subject(name: "English", marks: 100),
  //     Subject(name: "Urdu", marks: 100),
  //     Subject(name: "Math", marks: 100),
  //   ]),
  // ];
  // print(Student);

  Subject sub1 = Subject(name: "Eng", marks: 44);
  Subject sub2 = Subject(name: "Urdu", marks: 77);
  Subject sub3 = Subject(name: "Math", marks: 88);

  List<Subject> subjects1 = [sub1, sub2, sub3];
  List<Subject> subjects2 = [sub1, sub2, sub3];
  List<Subject> subject3 = [sub1, sub2, sub3];

  Student student1 = Student(id: 11, name: "Saad", subjects: subjects1);
  Student student2 = Student(id: 22, name: "Asad", subjects: subjects2);
  Student student3 = Student(id: 33, name: "Fahad", subjects: subject3);

  List<Student> Students = [student1, student2, student3];

  for (int i = 0; i < Students.length; i++) {
    Student student = Students[i];

    print("--- Student Name ${student.name} ---");

    for (int x = 0; x < student.subjects.length; x++) {
      Subject subject = student.subjects[x];

      stdout.write("${subject.name}: ");
      String input = stdin.readLineSync() ?? "0";

      int number = int.tryParse(input) ?? 0;

      Students[i].subjects[x].marks = number;
    }
  }

  stdout.write("\n\nProvide Student Name or ID: ");
  String query = stdin.readLineSync() ?? "";

  final results = Students.where((student) =>
      student.name.toLowerCase().contains(query.toLowerCase()) ||
      student.id == int.tryParse(query));

  results.forEach((student) {
    print("------- Student ID ${student.id} ---------");
    print("------- Student Name ${student.name} ---------");

    student.subjects.forEach((subject) {
      print("${subject.name}: ${subject.marks}");
    });

    print("Total Marks: ${student.obtainedMarks}");
    print("Percentage: ${student.percentage.toStringAsFixed(2)}");
    print("Grade: ${student.grade}");
  });
}
