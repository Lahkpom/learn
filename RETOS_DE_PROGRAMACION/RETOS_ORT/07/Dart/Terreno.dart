class Terreno{
  late double _metros2;
  double _ancho;
  double _largo;

  Terreno(this._ancho, this._largo){
    this._metros2 = this._ancho * this._largo;
  }

  double get getAncho => this._ancho;
  double get getLargo => this._largo;
  double get getMetros2 => this._metros2;

}