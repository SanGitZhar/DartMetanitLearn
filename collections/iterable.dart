void main() {
  // Создание Iterable (может быть List, Set или Map)
  Iterable<int> myIterable = [1, 2, 3, 4, 5];

  // Вывод Iterable
  print("Исходное Iterable: $myIterable");

  // Преобразование Iterable с использованием функции map
  Iterable<int> squaredIterable = myIterable.map((e) => e * e);
  print("Новый Iterable, элементы возводятся в квадрат: $squaredIterable");

  // Фильтрация Iterable с использованием функции where
  Iterable<int> evenNumbers = myIterable.where((e) => e % 2 == 0);
  print("Четные числа в Iterable: $evenNumbers");

  // Обход Iterable
  print("Элементы Iterable:");
  for (int element in myIterable) {
    print(element);
  }

  // Подсчет длины Iterable
  int length = myIterable.length;
  print("Длина Iterable: $length");
}
