void main(){
  String str1 = "Hello PDP Academy";
  String str2 = "PDP";

  int index = str1.indexOf(str2);

  if(index == -1){
    print(str1);
  }else{
    String result = str1.replaceFirst(str2, "Friend");
    print(result);
  }
}
  
