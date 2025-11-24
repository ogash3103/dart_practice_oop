void main()
{
 print(ekub(12, 18, 34, 48, 56));
}

int gcd2(int a, int b){
a = a.abs();
b = b.abs();

while(b != 0)
  {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int ekub(int a, int b, [int? c, int? d, int? e]){
  int result = gcd2(a, b);
  if(c != null) result = gcd2(result, c);
  if(d != null) result = gcd2(result, d);
  if(e != null) result = gcd2(result, e);

  return result;
}
