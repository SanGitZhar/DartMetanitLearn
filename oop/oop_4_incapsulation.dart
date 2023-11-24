class Car {
  String _make;
  int _year;

  Car(this._make, this._year);

  String get make => _make;

  set make(String newMake) {
    _make = newMake;
  }

  int get year => _year;

  set year(int newYear) {
    _year = newYear;
  }

  void displayCarInfo() {
    print('Car Make: $_make');
    print('Year: $_year');
  }
}

void main() {
  var myCar = Car('Toyota', 2022);
  myCar.displayCarInfo();
  myCar.make = 'Honda';
  myCar.year = 1885;
  myCar.displayCarInfo();
}
