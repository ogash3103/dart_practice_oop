
import 'dart:mirrors';

void main()
{
  print(raqamlarYigindisi(54321));
}

int raqamlarYigindisi(int n)
{
  if(n == 0) return 0;

  return (n % 10) + raqamlarYigindisi(n ~/ 10);
}

