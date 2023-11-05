import 'dart:io';

void main(){
  final Scanner = stdin;
  final Printer = stdout;
  int num1;
  int num2;
  int aux;

  Printer.write('Enter a number: ');
  num1 = int.parse(Scanner.readLineSync()!);
  
  Printer.write('Enter other number: ');
  num2 = int.parse(Scanner.readLineSync()!);

  print('First, num1 = ${num1}, num2 = ${num2}');

  aux = num1;
  num1 = num2;
  num2 = aux;

  print('Now, num1 = ${num1}, num2 = ${num2}');
}