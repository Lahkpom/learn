void main(){
  int num1;
  int num2;
  int aux;

  num1 = 3;
  num2 = 5;

  print('First, num1 = ${num1}, num2 = ${num2}');

  aux = num1;
  num1 = num2;
  num2 = aux;

  print('Now, num1 = ${num1}, num2 = ${num2}');
}