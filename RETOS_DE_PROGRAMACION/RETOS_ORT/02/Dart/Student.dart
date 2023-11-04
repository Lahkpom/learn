//import 'dart:io';

class Student{
  //Atributos
  final int GRADE_LIMIT= 3;
  
  Map<String, double> _mNotes = {
    'Trimestre 1': 0,
    'Trimestre 2': 0,
    'Trimestre 3': 0,
  };
  
  late double _promedio;
  
  String _name;

  //Constructor
  Student(this._name, {double uno = 0, double dos = 0, double tres = 0}){
    this._mNotes['Trimestre 1'] = uno;
    this._mNotes['Trimestre 2'] = dos;
    this._mNotes['Trimestre 3'] = tres;
    this._promedio = (uno + dos + tres) / this.GRADE_LIMIT;
  }

  //toString
  void showGrades(){
  print('${this._name} grades:');
  print('Trimestre 1: ${this._mNotes['Trimestre 1']}');
  print('Trimestre 2: ${this._mNotes['Trimestre 2']}');
  print('Trimestre 2: ${this._mNotes['Trimestre 3']}');
  print('Promedio: ${this._promedio}');
  } 

  //Métodos
  /*void chargeGrades(){
    print('Wich is the Trimeste 1 grade:');
    this._mNotes['Trimestre 1'] = stdin.readByteSync();
  }*/
}