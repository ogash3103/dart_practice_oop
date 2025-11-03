class NaturalNumber
{
  // task a
 int number;

  NaturalNumber(this.number);
  bool get isPositive => number > 0 ;

  // task b
  void countNumber() => print(number.abs().toString().length);
// task c
  bool isPrime()
  {
    if(number <= 1) return false;

    for(int i = 2; i * i <= number; i++)
      {
        if(number % i == 0)
          {
            return false;
          }
      }
    return true;
  }

  // task d

bool isPerfectNumber()
{
  if(number <= 0) return false;
  int sum = 0;
  for(int i = 1; i < number; i++) {
    if (number % i == 0) sum += i;
  }
  return sum == number;
}

// task e
int faktorial()
{
  if(number <= 0) print("faktorial sonni 0 dan kichik yoki teng bo'lmaydi");
  int result = 1;
  for(int i = 1; i <= number; i++)
    {
      result *= i;
    }
  return result;
}

// task f
int gcd(int a, int b)
{
  while(b != 0)
    {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a.abs();
}

// task g

int sumOfDigits()
{
  int n = number.abs();
  int sum = 0;

  while(n > 0)
    {
      int lastDigit = number % 10;
      sum += lastDigit;
      n ~/= 10;
    }
    return sum;
}

}
