import 'dart:io';

void main(){
  final Scanner = stdin;
  final Printer = stdout;
  int a;

  Printer.write('Please, enter a number: ');
  a = int.parse(Scanner.readLineSync()!);

  print('\nYour number is ${a}');
  print('${a} * 5 = ${a * 5}');
  print('${a} / 2 = ${a / 2}');
}