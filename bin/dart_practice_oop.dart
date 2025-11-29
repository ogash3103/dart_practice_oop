void main(){
  String s2 = "Janob 420 filmi 19:00 da boshlanadi";
  int natija2 = digitCount(s2);
  print("S = \"$s2\"");
  print("Natija: $natija2\n");
}

bool isDigit(String char){
  return char.isNotEmpty &&
      char.codeUnitAt(0) >= '0'.codeUnitAt(0)
      && char.codeUnitAt(0) <=  '9'.codeUnitAt(0);
}

int digitCount(String s){
  if(s.isEmpty) return 0;

  String str1 = s[0];
  String qolganSonlar = s.substring(1);

  int hisob = isDigit(str1) ? 1 : 0;

  return hisob + digitCount(qolganSonlar);
}