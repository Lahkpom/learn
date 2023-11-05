import 'dart:io';

class Student{
  //Atributos
  late double _promedio;
  final int GRADE_LIMIT= 3;
  final Scanner = stdin;
  final Printer = stdout;
  String _name;
  
  Map<String, double> _mNotes = {
    'Trimestre 1': 0,
    'Trimestre 2': 0,
    'Trimestre 3': 0,
  };
  
  //Constructor
  Student(this._name, {double uno = 0, double dos = 0, double tres = 0}){
    this.setGradesT3(uno);
    this.setGradesT3(dos);
    this.setGradesT3(tres);
  }

  //toString
  void showGrades(){
  print('${this.getName} grades:');
  print('Trimestre 1: ${this.getGradesT1()}');
  print('Trimestre 2: ${this.getGradesT2()}');
  print('Trimestre 3: ${this.getGradesT3()}');
  print('Promedio: ${this.getPromedio}');
  } 

  //Métodos
  String get getName => this._name;
  set setName(String name) => this._name = name;

  double get getPromedio{
    this._promedio = ((this.getGradesT1()! + this.getGradesT2()! + this.getGradesT3()!) / this.GRADE_LIMIT); 
    return this._promedio;
  }
  
  void setGradesT1(double grade) => this._mNotes['Trimestre 1'] = grade;
  void setGradesT2(double grade) => this._mNotes['Trimestre 2'] = grade;
  void setGradesT3(double grade) => this._mNotes['Trimestre 3'] = grade;

  double? getGradesT1() => this._mNotes['Trimestre 1'];
  double? getGradesT2() => this._mNotes['Trimestre 2'];
  double? getGradesT3() => this._mNotes['Trimestre 3'];

  void chargerGrades(){
    print('Charging ${this.getName} grades');
    
    Printer.write('Input Trimestre 1 grades:');
    double? t1 = double.parse(Scanner.readLineSync()!);
    this.setGradesT1(t1);
    
    Printer.write('Input Trimestre 2 grades:');
    double? t2 = double.parse(Scanner.readLineSync()!);
    this.setGradesT2(t2);
    
    Printer.write('Input Trimestre 3 grades:');
    double? t3 = double.parse(Scanner.readLineSync()!);
    this.setGradesT3(t3);

    print('The ${this.getName} grades had been chargered');
  }
}