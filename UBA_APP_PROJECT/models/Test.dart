import 'eTestStatus.dart';

class Test{
  late eTestStatus _status; 
  late bool _approved;
  int? _grade;
  String? _date;

  Test({status = eTestStatus.NO_REALIZADO, grade = null, approved = false, date = null}){
    this._status = status;
    this._grade = grade;
    this._approved = approved;
    this._date = date;
  }

  set setStatus(eTestStatus status) => this._status = status;
  set setGrade(int grade){
    this._grade = grade;
    this._status = eTestStatus.REALIZADO;
    this._setApprovedWithGrade(grade);
  }

  eTestStatus get getStatus => this._status;
  int? get getGrade => this._grade;

  void _setApprovedWithGrade(int grade){
    if(grade >= 4){
      this._approved = true;
    }
  }

  void showTestStatus(){
    print('Estado: ${this._status.name}');
    if(this._status == eTestStatus.REALIZADO){
      print('Aprobado: ${this._approved}');
      print('Nota: ${this._grade}');
      print('Fecha: ${this._date}');
    }
  }
}