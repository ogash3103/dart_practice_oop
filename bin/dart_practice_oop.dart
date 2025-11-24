void main() {
  final word = Words();
  String text = "O’zbekistonning poytaxti Toshkent";
  String result = word.reverseWords(text);
  print(result);
}

class Words{

  String reverseWords(String text)
  {
    List<String> words = text.split(' ');

    List<String> reversedWords = [];

    for(var word in words)
      {
        String reversedWord = word.split('').reversed.join('');

        reversedWords.add(reversedWord);
      }

    return reversedWords.join(' ');
  }
}
