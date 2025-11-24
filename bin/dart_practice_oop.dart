

void main(){
print(countMatchingEnds('laptop notebook esse'));
}
int countMatchingEnds(String text)
{
  List<String> words = text.trim().split(RegExp(r'\s+'));

  int count = 0;

  for(var word in words)
    {
      if(word.isEmpty) {
        continue;
      }
      String firstChar = word[0];
      String endChar = word[word.length - 1];

      if(firstChar == endChar)
      {
        count++;
      }
    }


return count;
}
