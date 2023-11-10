import '../models/Course.dart';
import '../models/eCourseLevel.dart';
import '../models/eCourseStatus.dart';

mixin mToListCourses{
  void toListAllOfCourses(List<Course> list){
    list.forEach((element) {
      element.showCourseStatus();
    });
  }

  void toListCoursesForName(List<Course> list){
    list.forEach((element) {
      print(element.getName);
    });
  }
  
  void toListCoursesForLevel(List<Course> list, eCourseLevel level){
    print('Materias de ${level.name}');
    list.forEach((element) {
      if(element.getLevel == level){
        print(element.getName);
      }
    });
  }

  void toListFinishedCourses(List<Course> list){
    list.forEach((element) {
      if(element.getStatus == eCourseStatus.FINALIZADO){
        print(element.getName);
      }
    });
  }
  
  void toListUnfinishedCourses(List<Course> list){
    List<Course> inProgress = []; 
    List<Course> toStrat = []; 
    
    list.forEach((element) {
      if(element.getStatus == eCourseStatus.EN_CURSO){
        inProgress.add(element);
      } else if(element.getStatus == eCourseStatus.NO_COMENZADO){
        toStrat.add(element);
      }
    });
    
    print('Materias en curso:');
    inProgress.forEach((element) {
      print(element.getName);
    });
    
    print('Materias no comenzadas:');
    toStrat.forEach((element) {
      print(element.getName);
    });
  }
}