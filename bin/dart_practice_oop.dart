import 'package:dart_practice_oop/Products/products.dart';

void main() {

  // 1. Generative constructor
  Product apple = Product(
    id: 1,
    name: "Apple",
    category: "fruit",
    price: 12.5,
    quantity: 5,
  );

  // 2. Named constructor — fruit
  Product banana = Product.fruit(
    id: 2,
    name: "Banana",
    price: 8,
    quantity: 6,
  );

  // 3. Named constructor — drink
  Product cola = Product.drink(
    id: 3,
    name: "Coca-Cola",
    price: 9,
    quantity: 3,
  );

  // 4. Const constructor
   Product sugar = Product.constProduct(
    id: 4,
    name: "Sugar",
    category: "ingredient",
  );

  // 5. Factory constructor — JSON dan obyekt yaratish
  Product milk = Product.fromJson({
    "id": 5,
    "name": "Milk",
    "category": "drink",
    "price": 7.5,
    "quantity": 2,
    "isAvailable": true,
  });

  // Getter/Setter ishlashi
  milk.price = 8.0;
  banana.quantity = 10;

  // Info chiqaramiz
  apple.printInfo();
  banana.printInfo();
  cola.printInfo();
  sugar.printInfo();
  milk.printInfo();
}
