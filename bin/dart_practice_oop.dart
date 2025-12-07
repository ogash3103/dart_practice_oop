class Words {
  // Private field
  final String _word;

  // Private generative constructor
  const Words._(this._word);

  // Faqat factory named constructor orqali obyekt yaratamiz
  factory Words.create(String input) {
    final RegExp onlyLowercaseLatin = RegExp(r'^[a-z]+$');

    if (input.isNotEmpty && onlyLowercaseLatin.hasMatch(input)) {
      return Words._(input);
    }
    // Shartga mos kelmasa _word = "" bo'lgan obyekt
    return const Words._("");
  }

  // word qiymatini o'qish uchun getter (ixtiyoriy, qulay bo'lishi uchun)
  String get value => _word;

  /// Unlilarni teskari qilib qaytaradi
  /// a, e, i, o, u
  String reverseVowels() {
    const vowels = {'a', 'e', 'i', 'o', 'u'};
    List<String> chars = _word.split("");
    int left = 0;
    int right = chars.length - 1;

    while (left < right) {
      while (left < right && !vowels.contains(chars[left])) {
        left++;
      }
      while (left < right && !vowels.contains(chars[right])) {
        right--;
      }

      if (left < right) {
        String temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;

        left++;
        right--;
      }
    }

    return chars.join();
  }

  // toString
  @override
  String toString() => 'Words("$_word")';

  // == operatori (faqat _word bo'yicha tenglik)
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Words && other._word == _word;
  }

  // hashCode ham _word ga bog'liq
  @override
  int get hashCode => _word.hashCode;

  // noSuchMethod – mavjud bo'lmagan method chaqirilsa ishlaydi
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print(
        'noSuchMethod: "${invocation.memberName}" nomli metod topilmadi. Words: "$_word"');
    return super.noSuchMethod(invocation);
  }
}

// ----------------- main() da ishlatish -----------------

void main() {
  // To‘g‘ri satr – faqat kichik lotin harflari
  Words w1 = Words.create("hello");
  Words w2 = Words.create("leetcode");

  // Noto‘g‘ri satrlar (raqam, katta harf, bo‘sh)
  Words w3 = Words.create("Hello123");
  Words w4 = Words.create("");

  print("w1 value: ${w1.value}");              // hello
  print("w1 reverseVowels: ${w1.reverseVowels()}"); // holle

  print("w2 value: ${w2.value}");                  // leetcode
  print("w2 reverseVowels: ${w2.reverseVowels()}"); // leotcede

  print("w3 value (invalid): '${w3.value}'");   // ''
  print("w4 value (empty): '${w4.value}'");     // ''

  // == va hashCode ni tekshirib ko‘ramiz
  Words w5 = Words.create("hello");
  print("w1 == w5 ? ${w1 == w5}");           // true
  print("w1.hashCode == w5.hashCode ? ${w1.hashCode == w5.hashCode}");

  // noSuchMethod (faqat dynamic orqali chaqirilganda ishlaydi)
  dynamic dyn = w1;
  // mavjud bo‘lmagan metod chaqiramiz:
  dyn.unknownMethod(); // console’da noSuchMethod xabari chiqadi
}
