import 'dart:io';
 
void main () async{
  File file = File("hello.txt");
  var lines = await file.readAsLines();
  for(final line in lines){
    print(line);
  }
}