import 'dart:io';
 
void main () async{
  String text = "Hello METANIT.COM\n";  // текст для записи
  File file = File("hello.txt");
  await file.writeAsString(text);
  print("File has been written");
}