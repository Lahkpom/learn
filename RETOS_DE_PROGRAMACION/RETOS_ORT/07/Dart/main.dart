import 'dart:io';

import 'Terreno.dart';

//Atributos globales
final Scanner = stdin;
final Printer = stdout;

void main(){
  Terreno t1 = Terreno(inputValue('ancho'), inputValue('largo'));

  print("Terreno total value: \$${terrenoValue(t1)}");
}

double inputValue(String txt){
  double value;
  Printer.write('Ingrese el valor correspondiente al $txt: ');
  value = double.parse(Scanner.readLineSync()!);
  return value;
}

double terrenoValue(Terreno t){
  double value;
  Printer.write('Ingrese el valor correspondiente al metro cuadrado: ');
  value = double.parse(Scanner.readLineSync()!);
  return t.getMetros2 * value;
}