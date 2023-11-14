import '../utilities/mToListCourses.dart';
import '../utilities/toCheckFinals.dart';
import 'Test.dart';
import 'eCourseLevel.dart';
import 'eCourseStatus.dart';
import 'eCourseTerm.dart';

class Course with mToListCourses{
  
  late String _name;
  late String _code;
  late String? _catedra;
  late bool _isFinable;
  late bool _isCoursable;
  late bool _isPromotable;
  late int? _courseGrade;
  
  late eCourseStatus _status;
  late eCourseLevel _level;
  late eCourseTerm _term;
  
  late List<Course> _lCoursesForCourser;
  late List<Course> _lFinalForCourser;
  late List<Course> _lFinalForFinal;

  late Test _parcial1;
  late Test _parcial2;
  late Test _final;
  
  Course(
    this._name,
    this._code,
    this._term,
    this._level, {
      String? catedra = null,
      bool isFinable = false,
      bool isCoursable = false,
      bool isPromotable = false, 
      eCourseStatus status = eCourseStatus.NO_COMENZADO, 
      int? courseGrade = null
      }
    ){
    
    this._catedra = catedra;
    this._isFinable = isFinable;
    this._isCoursable = isCoursable;
    this._isPromotable = isPromotable;
    this._status = status;
    this._courseGrade = courseGrade;

    this._lCoursesForCourser = [];
    this._lFinalForCourser = [];
    this._lFinalForFinal = [];

    this._parcial1 = Test();
    this._parcial2 = Test();
    this._final = Test();
  }
  
  set setCatedra(String? value) => this._catedra = value;
  set setStatus(eCourseStatus value) => this._status = value;
  set setCourseGrade(int? value) => this._courseGrade = value;
  
  set setListCoursesForCourser(List<Course> courses) => this._lCoursesForCourser = courses;
  set setListFinalForCourser(List<Course> courses) => this._lFinalForCourser = courses;
  set setListFinalForFinal(List<Course> courses) => this._lFinalForFinal = courses;
  
  set setParcial1(int grade) => this._parcial1.setGrade = grade;
  set setParcial2(int grade) => this._parcial2.setGrade = grade;
  set setFinal(int grade) => this._final.setGrade = grade;

  void _setIsFinalbe() => this._isFinable = toCheckFinals(this._lFinalForFinal);
  
  String get getName => this._name;
  String get getCode => this._code;
  int? get getCourseGrade => this._courseGrade;
  eCourseStatus get getStatus => this._status;
  eCourseLevel get getLevel => this._level;
  Test get getFinal => this._final;
  
  void _setIsCoursable(){
    bool cfc = false;
    bool ffc = false;

    int i = 0;
    _lCoursesForCourser.forEach((element) { 
      if(element.getCourseGrade != null && element.getCourseGrade! >= 4){
        i++;
      }
    });
    if(i == this._lCoursesForCourser.length){
      cfc = true;
    }
    
    //*Si cfc es falso, no evalúa ffc
    if(cfc){
      ffc = toCheckFinals(this._lFinalForCourser);
    }
    if(cfc && ffc){
      this._isCoursable = true;
    }
  }
  
  void showCourseStatus(){
    print('######################################################################################');
    print('Nombre: ${this._name}');
    print('Código: ${this._code}');
    print('Término: ${this._term.name}');
    print('Nivel: ${this._level.name}');
    print('Promocionable: ${this._isPromotable}');
    print('Estado: ${this._status.name}');
    _setIsCoursable();
    print('La puedo cursar?: ${this._isCoursable}');
    _setIsFinalbe();
    print('Puedo rendir el final?: ${this._isFinable}');
    if(!this._isCoursable){
      print('Cátedra: ${this._catedra}');
      print('Nota de cursada: ${this._courseGrade}');
      print('');
      print('Para cursar esta materia debe:');
      print(' - Tener aprobadas las cursadas de:');
      toListCoursesForName(this._lCoursesForCourser);
      print('');
      print(' - Tener aprobado los finales de:');
      toListCoursesForName(this._lFinalForCourser);
      print('');
    }
    if(!this._isFinable){
      print('Para rendir final de esta materia debe:');
      print(' - Tener aprobados los finales de:');
      toListCoursesForName(this._lFinalForFinal);
    }
    if(this._status != eCourseStatus.NO_COMENZADO){
      print('');
      print('1er Parcial: ');
      this._parcial1.showTestStatus();
      print('');
      print('2do Parcial: ');
      this._parcial2.showTestStatus();
      print('');
      print('Final: ');
      this._final.showTestStatus();
    }
    print('######################################################################################');
    print('');
  }
}