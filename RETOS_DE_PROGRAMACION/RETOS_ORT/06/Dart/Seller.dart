class Seller{
  //Atributos
  final int _FIXED_SALARY = 44000;
  final double _EXTRA = 0.16;
  double _totalAmountSold = 0;
  String _name;

  //Constructor
  Seller(this._name);

  //Métodos
  void inputTotalAmountSold(double i) => this._totalAmountSold = i;

  double getFinalSalary(){
    double extra = this._totalAmountSold * this._EXTRA;
    return this._totalAmountSold + extra + this._FIXED_SALARY;
  }

  get name => this._name;
}