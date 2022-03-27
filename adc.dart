//@dart = 2.9
import 'dart:io';

class Student {
  String name;
  int id;
  int totalNum = 300;

  int English;
  int Math;
  int Urdu;

  int obtainedNum() {
    return English + Math + Urdu;
  }

  double per() {
    return obtainedNum() / totalNum * 100;
  }

  String grade() {
    if (per() > 90) {
      print("Grade A+");
    } else if (per() > 80 && per() < 70) {
      print("Grade A");
    } else if (per() > 70 && per() < 80) {
      print("Grade B");
    } else if (per() > 60 && per() < 70) {
      print("Grade C");
    } else if (per() > 50 && per() < 60) {
      print("Grade D");
    } else if (per() < 50) {
      print("Grade F");
    }
  }

  showResult() {
    print("${name}'s Result ");
    print("Total Numbers are: ${totalNum}");
    print("${name}'s Obtained Numbers are : ${obtainedNum()}");
    print("${name}'s Persentage is : ${per()}");
    print("${name}'s Grade is : ${grade()}");
  }
}

void main() {
  Student std1 = new Student();
  print("Enter Student's Name");
  std1.name = stdin.readLineSync();
  print("Enter Student's Id");
  std1.id = int.parse(stdin.readLineSync());
  print("Enter English Numbers");
  std1.English = int.parse(stdin.readLineSync());
  print("Enter Math Numbers");
  std1.Math = int.parse(stdin.readLineSync());
  print("Enter Urdu Numbers");
  std1.Urdu = int.parse(stdin.readLineSync());
  // std1.showResult();

  Student std2 = new Student();
  print("Enter Student's Name");
  std2.name = stdin.readLineSync();
  print("Enter Student's Id");
  std2.id = int.parse(stdin.readLineSync());
  print("Enter English Numbers");
  std2.English = int.parse(stdin.readLineSync());
  print("Enter Math Numbers");
  std2.Math = int.parse(stdin.readLineSync());
  print("Enter Urdu Numbers");
  std2.Urdu = int.parse(stdin.readLineSync());
  // std2.showResult();

  Student std3 = new Student();
  print("Enter Student's Name");
  std3.name = stdin.readLineSync();
  print("Enter Student's Id");
  std3.id = int.parse(stdin.readLineSync());
  print("Enter English Numbers");
  std3.English = int.parse(stdin.readLineSync());
  print("Enter Math Numbers");
  std3.Math = int.parse(stdin.readLineSync());
  print("Enter Urdu Numbers");
  std3.Urdu = int.parse(stdin.readLineSync());
//  std3.showResult();

  Student std4 = new Student();
  print("Please enter Student's Name");
  std4.name = stdin.readLineSync();
  print("Please enter Student's Id");
  std4.id = int.parse(stdin.readLineSync());
  if (std4.id == std1.id && std4.name == std1.name) {
    std1.showResult();
  } else if (std4.id == std2.id && std4.name == std2.name) {
    std2.showResult();
  } else if (std4.id == std3.id && std4.name == std3.name) {
    std3.showResult();
  }
}
