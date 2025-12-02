void main(){
  List<String> numString = ['1','12','1.34'];

   var result = numString.map((e) => num.tryParse(e)).toList();

  print(result);
}