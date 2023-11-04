import 'dart:io';

void main(){
  final scanner = stdin;
  final printer = stdout;
  String? name;
  String? surname;
  int? age;

  printer.write("What's your name?: ");
  name = scanner.readLineSync();
  
  printer.write("What's your surname?: ");
  surname = scanner.readLineSync();
  
  printer.write("How old are you?: ");
  String? aux = scanner.readLineSync();
  age = int.parse(aux!);

  print('Welcome, ${name} ${surname}, ${age} years');
}