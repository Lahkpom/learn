void main(){
  final values = ['Love', '15', '30', '40', 'Deuce', 'Ventaja'];
  final points = ['P1', 'P1', 'P2', 'P2', 'P1', 'P2', 'P1', 'P1'];
  int p1 = 0;
  int p2 = 0;

  points.forEach((element) { 
    if(element == 'P1'){
      p1++;
    }else{
      p2++;
    }

    if(p1 == 3 && p2 == 3){
      print(values[4]);
    
    }else if(p1 == 4 || p2 == 4){
      String aux;
      if(p1 > p2){
        aux = 'P1';
      }else{
        aux = 'P2';
      }
      print('${values[5]} $aux');
    
    }else if(p1 == 5 || p2 == 5){
      String aux;
      if(p1 > p2){
        aux = 'P1';
      }else{
        aux = 'P2';
      }
      print('Ha ganado el $aux');
    }
    else{
      print('${values[p1]} - ${values[p2]}');
    }
  });


}