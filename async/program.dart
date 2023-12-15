Future getMessage() {
  return Future.delayed(Duration(seconds: 3), () => print("Пришло новое сообщение от Тома"));
}
 
void main() {
  getMessage();
  print("Проверка сообщений...");
}