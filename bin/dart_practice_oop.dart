 void main()
 {
    print(count('aaabbbdgg', 'bbbaaadgdgr'));
 }

 int count(String a, String b)
 {

   Set<String> charsB = b.split('').toSet();

   int matchCount = 0;

   for(final charB in charsB)
     {
       if(a.contains(charB))
         {
           matchCount++;
         }
     }

   return matchCount;
 }