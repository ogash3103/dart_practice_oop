
class ValidAnagram
{
  String str1;
  String str2;

  ValidAnagram(this.str1, this.str2);

  bool isAnagram()
  {
    str1.toLowerCase();
    str2.toLowerCase();

    if(str1.length != str2.length) return false;

    List<String> list1 = str1.split('')..sort();
    List<String> list2 = str2.split('')..sort();

    String strA = list1.join();
    String strB = list2.join();

    return strA == strB;
  }
}