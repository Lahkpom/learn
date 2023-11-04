import 'dart:io';

import 'Employee.dart';

void main(){
  Employee aux = Employee('Leonel');
  aux.totalHours = 8.0;
  aux.hourValue = 10.0;
  print('Ingrese un valor: ');
  var a = stdin.readLineSync();
  aux.showWeeklySalaryValue();
  print(a);
}