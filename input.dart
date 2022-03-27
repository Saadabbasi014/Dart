//@dart = 2.9
import 'dart:io';

void main() {
  print("What is your name");
  String name = stdin.readLineSync();
  
  print("How old are you");
  int age =  int.parse(stdin.readLineSync());
		
  
  int years =(100 - age);
  print("$name, You have $years years to be 100");
}
