import '../utilities/mToListCourses.dart';
import 'Course.dart';
import 'eCourseLevel.dart';

class Career with mToListCourses{
  //TODO agregar que muestre las materias segun el nivel
  late String _name;
  late List<Course> _lCourses;

  Career(this._name){
    this._lCourses = [];
  }

  set setListOfCourses(List<Course> courses) => this._lCourses = courses;

  void showCourses(){
    print('MATERIAS DE LA CARRERA: ${this._name.toUpperCase()}');
    toListAllOfCourses(this._lCourses);
  }

  void forLevel(eCourseLevel level){
    toListCoursesForLevel(this._lCourses, level);
  }
}