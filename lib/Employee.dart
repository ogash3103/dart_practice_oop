class Employee {
  // ------------------ FINAL FIELDS (const uchun) ------------------
  final int id;
  final String firstName;
  final String lastName;
  final String position;       // developer, manager, intern...

  // ------------------ MUTABLE PRIVATE FIELDS ----------------------
  double _salary;              // getter/setter uchun
  int _experience;             // ish tajribasi (yillar)

  // ------------------ 1. Generative Parameterized Constructor -----
  Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.position,
    required double salary,
    required int experience,
  })  : _salary = salary,
        _experience = experience;

  // ------------------ 2. intern NAMED CONSTRUCTOR -----------------
  Employee.intern({
    required int id,
    required String firstName,
    required String lastName,
  })  : id = id,
        firstName = firstName,
        lastName = lastName,
        position = "Intern",
        _salary = 0,
        _experience = 0;

  // ------------------ 3. CONST CONSTRUCTOR ------------------------
   Employee.constEmployee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.position,
  })  : _salary = 0,
        _experience = 0;

  // ------------------ 4. FACTORY CONSTRUCTOR ----------------------
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      position: json["position"],
      salary: json["salary"],
      experience: json["experience"],
    );
  }

  // ------------------ 5. GETTER / SETTER --------------------------

  // salary
  double get salary => _salary;

  set salary(double value) {
    if (value < 0) throw ArgumentError("Salary manfiy bo‘lishi mumkin emas!");
    _salary = value;
  }

  // experience
  int get experience => _experience;

  set experience(int value) {
    if (value < 0) throw ArgumentError("Experience manfiy bo‘lishi mumkin emas!");
    _experience = value;
  }

  // Qo‘shimcha qulay getter
  String get fullName => "$firstName $lastName";

  // Ma’lumot chiqaruvchi metod
  void printInfo() {
    print("""
ID: $id
Name: $fullName
Position: $position
Salary: $_salary
Experience: $_experience years
---------------------
""");
  }
}
