import 'User.dart';

void main(){
  //*Los generics pueden tomar cualquier tipo de valor implementados en nuestras clases

  //*Podemos dejarlo así
  User u1 = User('Leonel', 'Leo');

  //*O específicar entre diamantes qué tipo de valor queremos que sea la T
  User u2 = User<String>('Facundo', 'Facu');

  User u3 = User<int>(24, 20);

  print(u1.getName);
  print(u1.getNick);
  print('');
  print(u2.getName);
  print(u2.getNick);
  print('');
  print(u3.getName);
  print(u3.getNick);
  

  
}