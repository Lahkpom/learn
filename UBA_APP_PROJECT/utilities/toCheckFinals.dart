import '../models/Course.dart';

bool toCheckFinals(List<Course> list){
  bool aux = false;
  if(list.isNotEmpty){
    int j = 0;
    list.forEach((element) {
      if(element.getFinal.getIsApproved){
        j++;
      }
    });
    if(j == list.length){
      aux = true;
    }
  }else{
    aux = true;
  }
  
  return aux;
}