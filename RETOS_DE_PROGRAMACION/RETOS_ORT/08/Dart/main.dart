import 'dart:io';

final Scanner = stdin;
final Printer = stdout;
  
void main(){
  int x = inputNumber();
  int y = inputNumber();

  print('');
  print('$x + $y = ${x + y}');
  print('$x - $y = ${x - y}');
  print('$x * $y = ${x * y}');
  print('$x / $y = ${x / y}');
  
}

int inputNumber(){
  int aux;
  Printer.write('Enter a natural number: ');
  do {
    aux = int.parse(Scanner.readLineSync()!);
    if(aux <= 0){
      print('Most be greater than zero');
    } 
  } while (aux <= 1);
  return aux;
}