import 'dart:io';
import '../models/Task.dart';
void addTask(){
  try { 
    final file = File('./Tasks.txt');
    NO PUDE SOLUCIONAR QUE ME HACE APRETAR EL ENTER MUCHAS VECES
    if(file.existsSync()){
      final content = file.readAsStringSync();
      
      print('Name:');
      final a = stdin;
      String name = a.readLineSync() ?? 'New task'; //*Con esto le indicamos que si no se ingresa nada, que se inicialice por defecto
      
      print('Description:');
      final b = stdin;
      String? description = b.readLineSync();
      
      Task newTask = Task(name, description: description);

      file.writeAsStringSync(content + '\n\n' + newTask.toString()); 
      
    }else{
      throw new Exception("File doesn't exist");
    }
  } catch (e) {
    print(e.toString());
  }
}