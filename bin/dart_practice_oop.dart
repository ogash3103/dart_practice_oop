
enum MemberType {
  free,
  premiumGold,
  premiumSilver,
}

class Member {
  final int id;
  final String name;
  final MemberType type;

  // ✅ ASOSIY constructor
  Member(this.id, this.name, this.type);

  // ✅ FREE member
  Member.free(int id)
      : this(id, 'Free Member', MemberType.free);

  // ✅ PREMIUM GOLD member
  Member.premiumGold(int id)
      : this(id, 'Premium Gold Member', MemberType.premiumGold);

  // ✅ PREMIUM SILVER member
  Member.premiumSilver(int id)
      : this(id, 'Premium Silver Member', MemberType.premiumSilver);
}
void main() {
  final m1 = Member.free(1);
  final m2 = Member.premiumGold(2);
  final m3 = Member.premiumSilver(3);

  print('${m1.id} | ${m1.name} | ${m1.type}');
  print('${m2.id} | ${m2.name} | ${m2.type}');
  print('${m3.id} | ${m3.name} | ${m3.type}');
}
