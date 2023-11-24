void main (){
      
     try{
        Person tom = Person("Tom", -45);
        print(tom.age);
    }
    on Exception catch(e){
         print(e);
    } 
}
 
class Person{
    String name;
    int age = 1;
     
    Person(this.name, age){
        if(age < 1 || age > 110) {
            throw Exception("Недопустимый возраст");
        }
        this.age = age; // если возраст корректный, устанавливем его
    }
}