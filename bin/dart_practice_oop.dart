
void main(){
  print(check(3, 9, 11));
}

int check([int a = 1, int b = 1, int c = 1])
{
  int evenCount = 0;
  int oddCount = 0;
  if(a % 2 == 0) evenCount++;
  if(b % 2 == 0) evenCount++;
  if(c % 2 == 0) evenCount++;

  oddCount = 3 - evenCount;

  if(evenCount >= 2) return 1;
  if(oddCount >= 2) return 2;

  return 0;
}