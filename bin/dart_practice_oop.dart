class Person {
final String name;
final int age;
  Person(this.name, this.age);

@override
  bool operator ==(Object other) {
  if (identical(this, other)) return true;

  return other is Person && other.name == name && other.age == age;
}

    @override
  int get hashCode => name.hashCode ^ age.hashCode;

}

void main(){
  Person p1 = Person("Ali", 25);
  Person p2 = Person("Ali", 25);
  Person p3 = Person("Vali", 25);

  print(p1 == p2); // true
  print(p1 == p3); // false
  print(p1 == p1); // true

}