import 'dart:io';
import 'dart:convert';
 
void main() async {
  var client = HttpClient();
  try {
    // создаем запрос
    HttpClientRequest request = await client.get("www.google.com", 80, "/");
    // получаем ответ
    HttpClientResponse response = await request.close();
    // обрабатываем ответ
    final stringData = await response.transform(utf8.decoder).join();
    print(stringData);
  } finally {
    client.close();
  }
}