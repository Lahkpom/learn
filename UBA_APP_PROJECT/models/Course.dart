import '../utilities/mToListCourses.dart';
import 'Test.dart';
import 'eCourseLevel.dart';
import 'eCourseStatus.dart';
import 'eCourseTerm.dart';

class Course with mToListCourses{
  
  late String _name;
  late String _code;
  late String? _catedra;
  late bool _promotable;
  late int? _grade;
  
  late eCourseStatus _status;
  late eCourseLevel _level;
  late eCourseTerm _term;
  
  late List<Course> _lForCourser;
  late List<Course> _lForFinal;

  late Test _parcial1;
  late Test _parcial2;
  late Test _final;
  
  Course(
    this._name,
    this._code,
    this._term,
    this._level, {
      String? catedra = null,
      bool promotable = false, 
      eCourseStatus status = eCourseStatus.NO_COMENZADO, 
      int? grade = null
      }
    ){
    
    this._catedra = catedra;
    this._promotable = promotable;
    this._status = status;
    this._grade = grade;

    this._lForCourser = [];
    this._lForFinal = [];

    this._parcial1 = Test();
    this._parcial2 = Test();
    this._final = Test();
  }
  
  set setCatedra(String? value) => this._catedra = value;
  set setStatus(eCourseStatus value) => this._status = value;
  set setgrade(int? value) => this._grade = value;
  
  set setListForCourser(List<Course> courses) => this._lForCourser = courses;
  set setListForFinal(List<Course> courses) => this._lForFinal = courses;
  
  set setParcial1(int grade) => this._parcial1.setGrade = grade;
  set setParcial2(int grade) => this._parcial2.setGrade = grade;
  set setFinal(int grade) => this._final.setGrade = grade;
  
  String get getName => this._name;
  String get getCode => this._code;
  eCourseStatus get getStatus => this._status;
  eCourseLevel get getLevel => this._level;
  
  void showCourseStatus(){
    print('######################################################################################');
    print('Nombre: ${this._name}');
    print('Código: ${this._code}');
    print('Término: ${this._term.name}');
    print('Nivel: ${this._level.name}');
    print('Cátedra ${this._catedra}');
    print('Promocionable: ${this._promotable}');
    print('Estado: ${this._status.name}');
    print('Nota: ${this._grade}');
    print('');
    print('Materias necesarias para cursarla');
    toListAllOfCourses(this._lForCourser);
    print('');
    print('Materias necesarias para rendir final');
    toListAllOfCourses(this._lForFinal);
    print('');
    print('1er Parcial: ');
    this._parcial1.showTestStatus();
    print('');
    print('2do Parcial: ');
    this._parcial2.showTestStatus();
    print('');
    print('Final: ');
    this._final.showTestStatus();
    print('######################################################################################');
  }
}