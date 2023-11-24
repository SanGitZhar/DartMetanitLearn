class Person{
  String name = "";
  int age = 0;

  Person(String name, int age){
    this.name = name;
    this.age = age;
  }

  void displayInfo(){
    print("Name: ${this.name}\nAge: ${this.age}");
  }
}

void main(){
  Person tom = Person("Tom", 22);
  tom.displayInfo();
}