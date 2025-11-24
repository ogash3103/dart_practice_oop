import 'dart:math';

void main(){
  print(ekuk(12, 18));
}

int ekubTwoNumbers(int a, int b)
{
  a = a.abs();
  b = b.abs();

  while(b != 0)
    {
      int t = b;
      b = a % b;
      a = t;
    }
    return a;
}

int ekuk(int a, int b)
{
  if(a == 0 || b == 0) return 0;

  int gcd = ekubTwoNumbers(a, b);
  int lcd = (a.abs() * b.abs()) ~/ gcd;

  return lcd;
}
