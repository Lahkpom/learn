class Person{
  //*Atributos
  late String name_;
  late int age_;
  late String? nick;

  //*constructor
  Person(this.name_, this.age_, {this.nick}); //*lo que está en llaves es opcional

  //*
  get getName => this.name_;
  set setName(String name) => this.name_ = name;
  get getAge => this.age_;
  set setAge(int age) => this.age_ = age;
  get getNick => this.nick;
  set setNick(String? nick) => this.nick = nick; //*apodo


  String toString() => 'name=${this.name_}, age=${this.age_}, nick=${this.nick}';


}