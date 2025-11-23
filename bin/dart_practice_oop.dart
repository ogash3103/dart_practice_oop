
void main(){
 sortNumbers(35, 9, 11);
}

void sortNumbers([int a = 0, int b = 0, int c = 10])
{
  List<int> list = [a, b ,c];
  list.sort();
  print("Natija: $list");
}