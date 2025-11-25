void main(){
print(mixStrings('asdfgb', 'kjdnn'));
}

String mixStrings(String a, String b){
  String result = '';

  int maxLen = a.length > b.length ? a.length : b.length;

  for(int i = 0; i < maxLen; i++){
    if(i < a.length) result += a[i];
    if(i < b.length) result += b[i];
  }

  return result;
}