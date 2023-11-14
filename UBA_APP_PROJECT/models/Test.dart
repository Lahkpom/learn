import 'eTestStatus.dart';

class Test{
  late eTestStatus _status; 
  late bool _isApproved;
  int? _grade;
  String? _date;

  Test({status = eTestStatus.NO_REALIZADO, int? grade = null, bool isApproved = false, String? date = null}){
    this._status = status;
    this._grade = grade;
    this._isApproved = isApproved;
    this._date = date;
  }

  set setStatus(eTestStatus status) => this._status = status;
  set setGrade(int grade){
    this._grade = grade;
    this._status = eTestStatus.REALIZADO;
    this._setApprovedWithGrade(grade);
  }

  eTestStatus get getStatus => this._status;
  bool get getIsApproved => this._isApproved;
  int? get getGrade => this._grade;

  void _setApprovedWithGrade(int grade){
    if(grade >= 4){
      this._isApproved = true;
    }
  }

  void showTestStatus(){
    print('Estado: ${this._status.name}');
    if(this._status == eTestStatus.REALIZADO){
      print('Aprobado: ${this._isApproved}');
      print('Nota: ${this._grade}');
      print('Fecha: ${this._date}');
    }
  }
}