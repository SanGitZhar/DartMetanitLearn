void main() {
  // Создание словаря (ассоциативного массива)
  Map<String, int> myMap = {
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
  };

  // Вывод словаря
  print("Исходная карта: $myMap");

  // Добавление новой пары ключ-значение
  myMap['six'] = 6;
  print("Карта после добавления новой пары: $myMap");

  // Обновление значения по ключу
  myMap['three'] = 30;
  print("Карта после обновления значения по ключу 'three': $myMap");

  // Удаление элемента по ключу
  myMap.remove('four');
  print("Карта после удаления элемента с ключом 'four': $myMap");

  // Проверка наличия ключа в словаре
  bool containsKey = myMap.containsKey('two');
  print("Ключ 'two' присутствует в словаре: $containsKey");

  // Проверка наличия значения в словаре
  bool containsValue = myMap.containsValue(5);
  print("Значение 5 присутствует в словаре: $containsValue");

  // Обход ключей и значений в словаре
  print("Ключи в словаре:");
  for (String key in myMap.keys) {
    print(key);
  }

  print("Значения в словаре:");
  for (int value in myMap.values) {
    print(value);
  }

  // Подсчет размера словаря
  int size = myMap.length;
  print("Размер словаря: $size");
}
