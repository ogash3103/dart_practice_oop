import 'package:dart_practice_oop/Computer.dart';

void main() {
  // 1. Generative constructor
  Computer pc1 = Computer(
    id: 1,
    brand: "HP",
    model: "Pavilion",
    type: "desktop",
    price: 1000,
    ram: 16,
    storage: 512,
    cpuSpeed: 3.2,
  );

  // 2. Laptop constructor
  Computer macbook = Computer.laptop(
    id: 2,
    brand: "Apple",
    model: "MacBook Pro",
    price: 1800,
    ram: 16,
    storage: 512,
    cpuSpeed: 3.1,
  );

  // 3. Desktop constructor
  Computer dell = Computer.desktop(
    id: 3,
    brand: "Dell",
    model: "OptiPlex",
  );

  // 4. Const constructor
   Computer constPc = Computer.constComputer(
    id: 4,
    brand: "Asus",
    model: "ROG",
    type: "desktop",
  );

  // 5. Factory constructor (JSON)
  Computer fromJsonPc = Computer.fromJson({
    "id": 5,
    "brand": "Lenovo",
    "model": "ThinkPad",
    "type": "laptop",
    "price": 1500,
    "ram": 16,
    "storage": 512,
    "cpuSpeed": 2.8,
    "isAvailable": true,
  });

  // Getter/Setter ishlatib ko‘ramiz
  macbook.price = 2000;
  dell.ram = 32;
  fromJsonPc.storage = 1024;

  // Info chiqaramiz
  pc1.printInfo();
  macbook.printInfo();
  dell.printInfo();
  constPc.printInfo();
  fromJsonPc.printInfo();
}
