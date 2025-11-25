void main(){
  String text = "2345gtn35";
  int result = countDigits(num: text);
  print('Raqamlar soni: $result');
}

int countDigits({required String num}){
  int count = 0;
  for(var ch in num.split('')){
    if(ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57){
      count++;
    }
  }

  return count;
}