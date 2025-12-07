class Words {
  // 1) Private field
  final String _word;

  // 2) Private generative constructor
  const Words._(this._word);

  // 3) Faqat factory named constructor orqali object yaratamiz
  factory Words.create(String input) {
    final RegExp onlyLowercaseLatin = RegExp(r'^[a-z]+$');

    if (input.isNotEmpty && onlyLowercaseLatin.hasMatch(input)) {
      return Words._(input);
    }

    // Shartga mos kelmasa, bo'sh satrli obyekt
    return const Words._("");
  }

  // Qulaylik uchun getter
  String get value => _word;

  // 4) Unlilarni teskari qilib qaytaradigan metod
  // Unlilar: a, e, i, o, u
  String reverseVowels() {
    const vowels = {'a', 'e', 'i', 'o', 'u'};

    List<String> chars = _word.split('');
    int left = 0;
    int right = chars.length - 1;

    while (left < right) {
      // Chap tomondan unli topilguncha yuramiz
      while (left < right && !vowels.contains(chars[left])) {
        left++;
      }
      // O'ng tomondan unli topilguncha yuramiz
      while (left < right && !vowels.contains(chars[right])) {
        right--;
      }

      if (left < right) {
        // Unlilarni joyini almashtiramiz
        String temp = chars[left];
        chars[left] = chars[right];
        chars[right] = temp;

        left++;
        right--;
      }
    }

    return chars.join();
  }

  // 5) toString override
  @override
  String toString() => 'Words("$_word")';

  // 6) == operatorini override (object equality)
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Words && other._word == _word;
  }

  // 7) hashCode override
  @override
  int get hashCode => _word.hashCode;

  // 8) noSuchMethod – mavjud bo'lmagan metod chaqirilsa
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print(
        'noSuchMethod chaqirildi: "${invocation.memberName}" metodi topilmadi. Word: "$_word"');
    return super.noSuchMethod(invocation);
  }
}

// ----------------- main() da ishlatish -----------------

void main() {
  // To'g'ri satrlar (faqat kichik lotin harflari)
  Words w1 = Words.create("hello");
  Words w2 = Words.create("leetcode");

  // Noto'g'ri satrlar (raqam/bo'sh/katta harf bor)
  Words w3 = Words.create("Hello123");
  Words w4 = Words.create("");

  print("w1 value: ${w1.value}");                 // hello
  print("w1 reverseVowels: ${w1.reverseVowels()}"); // holle

  print("w2 value: ${w2.value}");                 // leetcode
  print("w2 reverseVowels: ${w2.reverseVowels()}"); // leotcede

  print("w3 value (invalid): '${w3.value}'");     // ''
  print("w4 value (empty): '${w4.value}'");       // ''

  // == va hashCode ishlashini tekshiramiz
  Words w5 = Words.create("hello");
  print("w1 == w5 ? ${w1 == w5}");                       // true
  print("hashCode tengmi? ${w1.hashCode == w5.hashCode}"); // true

  // noSuchMethod – faqat dynamic orqali chaqirilganda ishlaydi
  dynamic dyn = w1;
  dyn.unknownMethod(); // mavjud bo'lmagan metod → noSuchMethod ishga tushadi
}
