class Computer {
  // ---------------------- FINAL FIELDS (const uchun) ----------------------
  final int id;
  final String brand;         // Apple, HP, Dell...
  final String model;         // MacBook Pro, Inspiron...
  final String type;          // laptop, desktop, tablet...

  // ---------------------- MUTABLE PRIVATE FIELDS -------------------------
  double _price;
  int _ram;                   // GB
  int _storage;               // GB
  double _cpuSpeed;           // GHz

  bool isAvailable;

  // ---------------------- 1. GENERATIVE PARAMETERIZED CONSTRUCTOR --------
  Computer({
    required this.id,
    required this.brand,
    required this.model,
    required this.type,
    required double price,
    required int ram,
    required int storage,
    required double cpuSpeed,
    this.isAvailable = true,
  })  : _price = price,
        _ram = ram,
        _storage = storage,
        _cpuSpeed = cpuSpeed;

  // ---------------------- 2. LAPTOP NAMED CONSTRUCTOR --------------------
  Computer.laptop({
    required int id,
    required String brand,
    required String model,
    double price = 1200,
    int ram = 8,
    int storage = 256,
    double cpuSpeed = 2.4,
  })  : id = id,
        brand = brand,
        model = model,
        type = "laptop",
        _price = price,
        _ram = ram,
        _storage = storage,
        _cpuSpeed = cpuSpeed,
        isAvailable = true;

  // ---------------------- 3. DESKTOP NAMED CONSTRUCTOR -------------------
  Computer.desktop({
    required int id,
    required String brand,
    required String model,
    double price = 900,
    int ram = 16,
    int storage = 512,
    double cpuSpeed = 3.0,
  })  : id = id,
        brand = brand,
        model = model,
        type = "desktop",
        _price = price,
        _ram = ram,
        _storage = storage,
        _cpuSpeed = cpuSpeed,
        isAvailable = true;

  // ---------------------- 4. CONST CONSTRUCTOR ---------------------------
   Computer.constComputer({
    required this.id,
    required this.brand,
    required this.model,
    required this.type,
  })  : _price = 0,
        _ram = 0,
        _storage = 0,
        _cpuSpeed = 0,
        isAvailable = true;

  // ---------------------- 5. FACTORY CONSTRUCTOR (JSON) ------------------
  factory Computer.fromJson(Map<String, dynamic> json) {
    return Computer(
      id: json["id"],
      brand: json["brand"],
      model: json["model"],
      type: json["type"],
      price: json["price"],
      ram: json["ram"],
      storage: json["storage"],
      cpuSpeed: json["cpuSpeed"],
      isAvailable: json["isAvailable"] ?? true,
    );
  }

  // ---------------------- 6. GETTER / SETTER -----------------------------

  // price
  double get price => _price;

  set price(double value) {
    if (value < 0) throw ArgumentError("Narx manfiy bo‘lishi mumkin emas!");
    _price = value;
  }

  // RAM
  int get ram => _ram;

  set ram(int value) {
    if (value <= 0) throw ArgumentError("RAM 0 dan katta bo‘lishi shart!");
    _ram = value;
  }

  // storage
  int get storage => _storage;

  set storage(int value) {
    if (value <= 0) throw ArgumentError("Storage 0 dan katta bo‘lishi shart!");
    _storage = value;
  }

  // CPU speed
  double get cpuSpeed => _cpuSpeed;

  set cpuSpeed(double value) {
    if (value <= 0) throw ArgumentError("CPU speed musbat bo‘lishi kerak!");
    _cpuSpeed = value;
  }

  // Qo‘shimcha qulay getter
  String get fullName => "$brand $model";

  // Info chiqaruvchi metod
  void printInfo() {
    print("""
ID: $id
Name: $fullName
Type: $type
Price: $_price
RAM: $_ram GB
Storage: $_storage GB
CPU Speed: $_cpuSpeed GHz
Available: $isAvailable
------------------------
""");
  }
}
