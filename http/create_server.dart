import 'dart:io';
 
void main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 8888);
  print("Сервер запущен...");
  await server.forEach((HttpRequest request) {
 
    final response = request.response;    // получае объект ответа
    response.write("Hello METANIT.COM");  // отправляем в ответ строку "Hello METANIT.COM"
    response.close();                     // закрываем и отправляем ответ
  });
}