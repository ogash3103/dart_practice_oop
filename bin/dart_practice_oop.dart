void main(){
  print(fistThree('sa'));
}

String fistThree(String str){
  if(str.length >= 3){
    return str.substring(0,3);
  }else{
    return str.padRight(3, '@');
  }
}
