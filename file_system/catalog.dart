import 'dart:io';
 

 //create catalog
void main() {
  var myDir = Directory("hello");
  myDir.create();
  print("Folder has been created");
}