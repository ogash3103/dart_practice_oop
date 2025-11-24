void main() {
  String matn1 = "Bu Yangi Maqola Sarlavhasi";
  final slug1 = convertedSlug(matn1);
  print("Original: $matn1");
  print("Slug: $slug1");
}

String convertedSlug(String text){
String textSlug = text.toLowerCase();

final result = textSlug.split(' ');
return result.join('-');
}
