void main(){
  String s1 = "abcde";
  String goal1 = "cdeab";
  bool natija1 = rotateString(s1, goal1);
  print("S = \"$s1\", Goal = \"$goal1\"");
  print("Natija: $natija1\n");
}

bool rotateString(String s, String goal){
  if(s.length != goal.length) return false;

  if(s.isEmpty == goal.isEmpty) return true;

  String sKengaytirilgan = s + s;

  return sKengaytirilgan.contains(goal);
}