class Date {
  int year;
  int month;
  int day;

  Date(this.year, this.month, this.day);

  bool operator >(Date other) =>
      year > other.year || (year == other.year && month > other.month) ||
          (year == other.year && month == other.month && day > other.day);

  @override
  String toString()  => "$year, $month, $day";
}

void main(){

  final d1 = Date(2025, 12, 19);
  final d2 = Date(2024, 12, 31);
  final d3 = Date(2025, 11, 20);

  print(d1 > d2); // true
  print(d1 > d3); // true
  print(d3 > d1); // false
}