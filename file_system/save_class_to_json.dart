import 'dart:io';
import 'dart:convert';
 
void main() async {
  Person tom = Person("Tom", 38);
  var encoded = json.encode(tom);   // преобразуем в json
  File file = File("person.json");
  await file.writeAsString(encoded);    // запись в файл
  print("File has been written");
}
class Person{
  String name;
  int age;
  Person(this.name, this.age);
 
  factory Person.fromJson(Map<String, Object?> jsonMap){
    return Person(jsonMap["name"] as String, jsonMap["age"] as int);
  }
 
  Map toJson() => { "name": name, "age": age};
  @override
  toString() => "Name: $name \t Age: $age";
}