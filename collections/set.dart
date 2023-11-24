void main() {
  // Создание списка
  List<int> myList = [1, 2, 3, 4, 5];

  // Вывод списка
  print("Исходный список: $myList");

  // Добавление элемента в конец списка
  myList.add(6);
  print("Список после добавления элемента: $myList");

  // Вставка элемента по индексу
  myList.insert(2, 10);
  print("Список после вставки элемента по индексу 2: $myList");

  // Удаление элемента по значению
  myList.remove(3);
  print("Список после удаления элемента со значением 3: $myList");

  // Удаление элемента по индексу
  myList.removeAt(1);
  print("Список после удаления элемента по индексу 1: $myList");

  // Поиск индекса элемента
  int index = myList.indexOf(4);
  print("Индекс элемента со значением 4: $index");

  // Сортировка списка
  myList.sort();
  print("Список после сортировки: $myList");

  // Обход списка
  print("Элементы списка:");
  for (int element in myList) {
    print(element);
  }

  // Подсчет длины списка
  int length = myList.length;
  print("Длина списка: $length");

  // Создание нового списка с использованием функции map
  List<int> squaredList = myList.map((e) => e * e).toList();
  print("Новый список, элементы возводятся в квадрат: $squaredList");
}
