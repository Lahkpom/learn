import 'dart:io';

void main(){
  String? name;
  String? nombre;
  //int? edad;

  print("What's your name?");
  name = stdin.readLineSync();

  stdout.write('Por favor, introduce tu nombre: ');
  nombre = stdin.readLineSync();

  // Solicitar la edad al usuario
  //stdout.write('Por favor, introduce tu edad: ');
  //int? edad = int.parse(stdin.readLineSync());

  print('Welcome, ${name}');
  print('Welcome, ${nombre}');
}