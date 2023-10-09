void main() {
  //*Funciones sin nombre
  void functionA() {
    print('This is a function');
  }

  void functionB(Function myFunction) {
    myFunction();
    print('This is b function');
  }

  functionB(functionA);
}
