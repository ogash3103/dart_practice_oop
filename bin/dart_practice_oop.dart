
void main(){
  findQuadrant(x: 34, y: -56);
}

void findQuadrant({int x = 1, int y = 1})
{
  if(x == 0 || y == 0) print("Xato: Nuqta koordinata o'qida yotibdi ($x, $y). Shart buzilgan.");

  String result = '';
  if (x > 0 && y > 0) {
    result = "1-chorak";
  } else if (x < 0 && y > 0) {
    result = "2-chorak";
  } else if (x < 0 && y < 0) {
    result = "3-chorak";
  } else if (x > 0 && y < 0) {
    result = "4-chorak";
  } else {
    result = "Nuqta hech bir chorakka tegishli emas (o‘qda yotadi)";
  }

  print("Nuqta ($x, $y) → $result");
}