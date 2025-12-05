class Product {
  // ---------------------- FINAL FIELDS (const uchun) ----------------------
  final int id;
  final String name;
  final String category;       // fruit, drink, snack, etc.

  // ---------------------- PRIVATE MUTABLE FIELDS -------------------------
  double _price;               // narx
  int _quantity;               // miqdori (donasi, kg...)

  bool isAvailable;            // mavjudlik

  // ---------------------- 1. GENERATIVE PARAMETERIZED CONSTRUCTOR --------
  Product({
    required this.id,
    required this.name,
    required this.category,
    required double price,
    required int quantity,
    this.isAvailable = true,
  })  : _price = price,
        _quantity = quantity;

  // ---------------------- 2. fruit NAMED CONSTRUCTOR ---------------------
  Product.fruit({
    required int id,
    required String name,
    double price = 10.0,
    int quantity = 1,
  })  : id = id,
        name = name,
        category = "fruit",
        _price = price,
        _quantity = quantity,
        isAvailable = true;

  // ---------------------- 3. drink NAMED CONSTRUCTOR ---------------------
  Product.drink({
    required int id,
    required String name,
    double price = 5.0,
    int quantity = 1,
  })  : id = id,
        name = name,
        category = "drink",
        _price = price,
        _quantity = quantity,
        isAvailable = true;

  // ---------------------- 4. CONST CONSTRUCTOR ---------------------------
  Product.constProduct({
    required this.id,
    required this.name,
    required this.category,
  })  : _price = 0,
        _quantity = 0,
        isAvailable = true;

  // ---------------------- 5. FACTORY CONSTRUCTOR (JSON) ------------------
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      category: json["category"],
      price: json["price"],
      quantity: json["quantity"],
      isAvailable: json["isAvailable"],
    );
  }

  // ---------------------- 6. GETTER / SETTER -----------------------------

  // price
  double get price => _price;

  set price(double value) {
    if (value < 0) {
      throw ArgumentError("Narx manfiy bo‘lmaydi!");
    }
    _price = value;
  }

  // quantity
  int get quantity => _quantity;

  set quantity(int value) {
    if (value < 0) {
      throw ArgumentError("Miqdor manfiy bo‘lishi mumkin emas!");
    }
    _quantity = value;
  }

  // Qo‘shimcha qulay getter
  double get totalPrice => _price * _quantity;

  // info chiqaruvchi metod
  void printInfo() {
    print("""
ID: $id
Name: $name
Category: $category
Price: $_price
Quantity: $_quantity
Total Price: $totalPrice
Available: $isAvailable
----------------------
""");
  }
}
