void main(){
  String input = """Just two weeks until the @TheBookerPrizes shortlist is 
announced! http://bit.ly/bookerprizebso Explore the longlist and support 
indie bookshops #2021BookerPrize #FinestFiction #ChooseIndieLinks""";

  String output = convertTags(input);

  print(output);
}

String convertTags(String str){
  final reg = RegExp(r'[@#][A-Za-z0-9_]+');

  return str.replaceAllMapped(reg, (match){
          return match.group(0)!.toUpperCase();
  });
}
