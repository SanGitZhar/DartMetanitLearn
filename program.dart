import 'dart:io';

void main() {
  var fruits = ["Apple", "Banana", "Pear", "Orange"];
  var price_for_kg = [450, 750, 900, 1100];
  var kgs = [10, 15, 17, 5];
  var is_birthday = false;
  double last_result = 0;
  print("Приветствую в нашем магазине!");
  print("У вас сегодня день рождения?(да/нет):");
  var answer = stdin.readLineSync();
  if (answer == "да") {
    print(
        "Поздравляем вас с днём рождения, вам полагается скидка 10% на покупку!");
    is_birthday = true;
  }
  print("");
  String? again;
  do {
    print("Товары:");
    for (int i = 0; i < fruits.length; i++) {
      if (kgs[i] == 0) {
        continue;
      }
      print(
          '${i + 1}: ${fruits[i]} \nВ наличии - ${kgs[i]}\tЦена - ${price_for_kg[i]}тг. за 1 кг.');
    }
    print("Выберите товар по номеру:");
    var answer2 = stdin.readLineSync();
    var is_chosed = false;
    switch (answer2) {
      case '1':
        if (kgs[0] > 0) {
          print('Выбрано: ${fruits[0]}');
          is_chosed = true;
          break;
        }
      case '2':
        if (kgs[1] > 0) {
          print('Выбрано: ${fruits[1]}');
          is_chosed = true;
          break;
        }
      case '3':
        if (kgs[2] > 0) {
          print('Выбрано: ${fruits[2]}');
          is_chosed = true;
          break;
        }
      case '4':
        if (kgs[3] > 0) {
          print('Выбрано: ${fruits[3]}');
          is_chosed = true;
          break;
        }
      default:
        print('Вы ничего не выбрали');
        return;
    }

    if (is_chosed) {
      int? price_index;
      int? kg;
      if (answer2 != null) {
        price_index = int.tryParse(answer2);
        if (price_index != null) {
          price_index -= 1;
        }
      } else {
        print("Ошибка ввода данных...");
        return;
      }
      print("Введите количество кг.:");
      String? answer3 = stdin.readLineSync();
      if (answer3 != null) {
        kg = int.tryParse(answer3);
      } else {
        print("Ошибка ввода данных...");
      }
      if (kg != null && price_index != null) {
        if (kg <= 0) {
          print("Ошибка ввода данных...");
          return;
        }
        if (kg > kgs[price_index]) {
          print(
              "Вы выбрали больше чем есть в наличии, покупаем всё что осталось - ${kgs[price_index]}кг.");
          kg = kgs[price_index];
        }
        kgs[price_index] -= kg;
        double result = kg * price_for_kg[price_index] * 1.0;
        print("Цена без учета скидок ${result}тг.!");
        if (result > 5000) {
          print("За покупку больше чем 5000 вам прилагается скидка 15%");
          result = result * 0.85;
        }
        if (is_birthday) {
          result *= 0.9;
        }
        last_result += result;
        print(
            "С учётом всех скидок, за ${fruits[price_index]} c вас ${result}тг.!");
        print("Хотите купить ещё что нибудь? (да/нет):");
        again = stdin.readLineSync();
      } else {
        print("Ошибка ввода данных...");
      }
    } else {
      print("Вы ничего не выбрали...");
      return;
    }
  } while (again == "да");
  print("По итогу с вас ${last_result} тг. за всё!");
}
