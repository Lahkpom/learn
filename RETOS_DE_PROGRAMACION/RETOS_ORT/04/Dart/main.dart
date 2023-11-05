import 'dart:io';
import 'Employee.dart';

//Atributos globales
final Scanner = stdin;
final Printer = stdout;
void main(){
  Employee aux = Employee('Leonel');
  aux.totalHours = enterDouble(text: 'Total hours worked: ');
  aux.hourValue = enterDouble(text: 'Hour value?: ');
  aux.showWeeklySalaryValue();
}

double enterDouble({String text = 'Enter value: '}){
  dynamic output;
  
  Printer.write(text);
  output = double.parse(Scanner.readLineSync()!);

  return output;
}