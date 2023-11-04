class Employee{
  //Atributos
  final int BUSSINES_DAY = 5;
  
  late String _id;
  
  double _hourValue = 0;
  double _totalHours = 0;
  

  //Constructor
  Employee(this._id);

  //Métodos
  set hourValue( value) => this._hourValue = value;
  set totalHours( value) => this._totalHours = value;

  void showWeeklySalaryValue() => print("${this._id}'s Weekly salary: ${((this._totalHours * this.BUSSINES_DAY) + (this._totalHours / 2)) * this._hourValue}");
}