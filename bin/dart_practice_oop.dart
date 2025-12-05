import 'package:dart_practice_oop/Employee.dart';

void main() {
  // 1. Generative constructor
  Employee emp1 = Employee(
    id: 1,
    firstName: "John",
    lastName: "Doe",
    position: "Developer",
    salary: 1200,
    experience: 2,
  );

  // 2. intern named constructor
  Employee intern = Employee.intern(
    id: 2,
    firstName: "Ali",
    lastName: "Karimov",
  );

  intern.salary = 300;        // setter ishlayapti
  intern.experience = 1;

  // 3. const constructor
   Employee empConst = Employee.constEmployee(
    id: 3,
    firstName: "Const",
    lastName: "User",
    position: "Tester",
  );

  // 4. factory constructor
  Employee empJson = Employee.fromJson({
    "id": 4,
    "firstName": "Sara",
    "lastName": "Smith",
    "position": "Manager",
    "salary": 2000,
    "experience": 5,
  });

  // Ma’lumotlarni chiqarish
  emp1.printInfo();
  intern.printInfo();
  empConst.printInfo();
  empJson.printInfo();
}
