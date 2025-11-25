void main(){

  String str = "asdfsdfgjgfjgooehmrgqwxxzmr";

  Map<String, int> countMap = {};

  for(var char in str.split('')){
    countMap[char] = (countMap[char] ?? 0) + 1;
  }

  print('Har bir harf necha marta qatnashgan:');
  countMap.forEach((k, v){
    print('$k: $v');
  });
}