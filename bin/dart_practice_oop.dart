void main(){
print(removeX('hxi'));
}

String removeX(String s){
if(s.isEmpty) return s;
String result = s;

if(result.startsWith('x')){
  result = result.substring(1);
}

if(result.length > 1 && result[1] == 'x'){
  result = result[0] + result.substring(2);
}
return result;
}


