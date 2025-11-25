void main(){
  String s1 = "abababa";
  String s2 = "aba";

  int count = 0;
  int startIndex = 0;

  while (true){
    int index = s1.indexOf(s2, startIndex);

    if(index == -1) break;

    count++;
    startIndex = index + 1;
  }
  
  print('Natija: $count');
}