// Функция, возвращающая Future
Future<String> fetchData() async {
  // Имитация асинхронной операции, например, запрос к серверу
  await Future.delayed(Duration(seconds: 2));

  // Возвращаем результат
  return "Данные получены!";
}

// Главная функция
void main() async {
  print("Начало работы");

  // Использование асинхронной функции с await
  try {
    String result = await fetchData();
    print(result);
  } catch (error) {
    print("Ошибка: $error");
  }

  print("Завершение работы");
}
