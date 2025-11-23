
void main()
{
  print(checkNumbers(a: 5, b: 6, c: 4));
}


int checkNumbers({required int a, required int b, required int c})
{
  if(a == b && b == c) return 5;

  if(a < b && b < c) return 1;

  if(a > b && b > c) return 2;

  if(b >= a && b >= c) return b;

  return 0;
}