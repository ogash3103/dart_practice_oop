void main(){
  List<int> num = [1, 3, 5, 15, 17, 30];

  for(int n in num){
    String result = fizzBuzz(number: n, checker: checkDevide);
    print("n = $n => $result");
  }

}

bool checkDevide(int n, int dive) => n % dive == 0;

String fizzBuzz({
required int number,
required bool Function(int n, int dive) checker}){

  final isDivisibleBy3 = checker(number, 3);
  final isDivisibleBy5 = checker(number, 5);

  if(isDivisibleBy3 && isDivisibleBy5){
    return "FizzBuzz";
  }else if(isDivisibleBy3){
    return 'Fizz';
  } else if(isDivisibleBy5){
    return 'Buzz';
  }else {
    return number.toString();
  }

}