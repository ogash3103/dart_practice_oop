void main(){
print(swapCase('FLuTTeR'));
  
}

String swapCase(String s){
  final buffer = StringBuffer();

  for(var ch in s.split('')){
    if(ch.contains(RegExp(r'[A-Za-z]'))){
      buffer.write(
        ch == ch.toUpperCase() ? ch.toLowerCase() : ch.toUpperCase()
      );
    }else {
      buffer.write(ch);
    }
  }
  return buffer.toString();
}