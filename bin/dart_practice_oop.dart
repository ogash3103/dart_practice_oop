void main(){
  print(removeStars("ab*cd"));
  print(removeStars("sm*eilly"));
  print(removeStars("sm**eil*ly"));
}

String removeStars(String ch){

  Set<int> deleteIndex = {};

  for(int i = 0; i < ch.length; i++){
    if(ch[i] == '*'){
      deleteIndex.add(i);
      if(i > 0) deleteIndex.add(i - 1);
      if(i < ch.length) deleteIndex.add(i + 1);
    }
  }

  String result = '';

  for(int i = 0; i < ch.length; i++)
    {
      if(!deleteIndex.contains(i)){
        result += ch[i];
      }
    }

  return result;
}
