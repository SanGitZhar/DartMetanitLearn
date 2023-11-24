void main(){
  // anonym
  (() => print("hello"))();
  int sumTwoNumbers(int a, int b) => a + b;
  print(sumTwoNumbers(2, 2));

  // function has arg
  print(twoNumbersAndFunction(3, 5, sumTwoNumbers));

  // recoursive
  print(factorial(5));

  // closing
  var counter = get_next_number();
  print(counter());
  print(counter());
  print(counter());
}

int twoNumbersAndFunction(int a, int b, Function func){
  return func(a, b);
}

Function get_next_number(){
  int i = 0;

  int next(){
    i++;
    return i;
  }
  return next;
}



int factorial(int n){
  if (n < 0){
    return -1;
  }
  if (n == 0){
    return 0;
  }
  if (n == 1){
    return 1;
  }
  return factorial(n - 1) * n;
}

