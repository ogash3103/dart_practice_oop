class Print{
 int x;
 int y;

 Print(this.x, this.y);

 Print operator +(Print other ) => Print(x + other.x, y + other.y);
 Print operator -(Print other ) => Print(x - other.x, y - other.y);
 @override
 String toString() => "$x , $y";
}

void main(){

  final p = Print(10, 12);
  final p2 = Print(4, 20);

  final sum = p + p2;
  final sum2 = p - p2;
  print("$sum, $sum2");

}