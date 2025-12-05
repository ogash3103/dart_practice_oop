class Vehicle {
  // --- Public fields (ko‘rinadigan maydonlar) ---
  final String id;          // unikal id (masalan: VIN, yoki oddiy string)
  String brand;             // Toyota, Tesla, Mercedes...
  String model;             // Corolla, Model 3, Sprinter...
  String type;              // car, truck, bus, sport ...

  int year;                 // ishlab chiqarilgan yil
  String fuelType;          // petrol, diesel, electric, hybrid...
  double engineVolume;      // 1.6, 2.0, 4.0 va h.k.

  bool isAutomatic;         // avtomat korobka bormi
  bool isElectric;          // to‘liq elektrmi yo‘qmi

  double mileage;           // yurgan masofasi (km)

  // --- Private fields (faqat klass ichida) ---
  int _wheelsCount;         // balonlar soni
  int _seatsCount;          // o‘rindiqlar soni

  // 1. Generative parameterized constructor
  Vehicle({
    required this.id,
    required this.brand,
    required this.model,
    required this.type,
    required this.year,
    required this.fuelType,
    required this.engineVolume,
    required bool isAutomatic,
    required bool isElectric,
    required double mileage,
    required int wheelsCount,
    required int seatsCount,
  })  : isAutomatic = isAutomatic,
        isElectric = isElectric,
        mileage = mileage,
        _wheelsCount = wheelsCount,
        _seatsCount = seatsCount;

  // 2. truck nomli named constructor
  Vehicle.truck({
    required String id,
    required String brand,
    required String model,
    int year = 2020,
    double engineVolume = 4.0,
    double mileage = 0,
  }) : this(
    id: id,
    brand: brand,
    model: model,
    type: 'truck',
    year: year,
    fuelType: 'diesel',
    engineVolume: engineVolume,
    isAutomatic: false,
    isElectric: false,
    mileage: mileage,
    wheelsCount: 6,
    seatsCount: 3,
  );

  // 3. bus nomli named constructor
  Vehicle.bus({
    required String id,
    required String brand,
    required String model,
    int year = 2020,
    double engineVolume = 3.0,
    double mileage = 0,
  }) : this(
    id: id,
    brand: brand,
    model: model,
    type: 'bus',
    year: year,
    fuelType: 'diesel',
    engineVolume: engineVolume,
    isAutomatic: true,
    isElectric: false,
    mileage: mileage,
    wheelsCount: 6,
    seatsCount: 30,
  );

  // 4. sport nomli named constructor
  Vehicle.sport({
    required String id,
    required String brand,
    required String model,
    int year = 2022,
    double engineVolume = 3.5,
    double mileage = 0,
  }) : this(
    id: id,
    brand: brand,
    model: model,
    type: 'sport',
    year: year,
    fuelType: 'petrol',
    engineVolume: engineVolume,
    isAutomatic: true,
    isElectric: false,
    mileage: mileage,
    wheelsCount: 4,
    seatsCount: 2,
  );

  // 5. car nomli named redirect constructor
  // Oddiy yengil mashina uchun
  Vehicle.car({
    required String id,
    required String brand,
    required String model,
    int year = 2021,
    double engineVolume = 1.6,
    double mileage = 0,
    bool isAutomatic = true,
    bool isElectric = false,
  }) : this(
    id: id,
    brand: brand,
    model: model,
    type: 'car',
    year: year,
    fuelType: isElectric ? 'electric' : 'petrol',
    engineVolume: engineVolume,
    isAutomatic: isAutomatic,
    isElectric: isElectric,
    mileage: mileage,
    wheelsCount: 4,
    seatsCount: 5,
  );

  // 6. Getter/setter lar (balonlar va o‘rindiqlar soni uchun)

  int get wheelsCount => _wheelsCount;

  set wheelsCount(int value) {
    if (value <= 0) {
      throw ArgumentError('Balonlar soni 0 dan katta bo‘lishi kerak');
    }
    _wheelsCount = value;
  }

  int get seatsCount => _seatsCount;

  set seatsCount(int value) {
    if (value <= 0) {
      throw ArgumentError('O‘rindiqlar soni 0 dan katta bo‘lishi kerak');
    }
    _seatsCount = value;
  }

  // Qulay ko‘rinish uchun info chiqaradigan metod
  void printInfo() {
    print('''
ID: $id
Type: $type
Brand/Model: $brand $model
Year: $year
Fuel: $fuelType | Engine: ${engineVolume}L
Automatic: $isAutomatic | Electric: $isElectric
Mileage: $mileage km
Wheels: $_wheelsCount | Seats: $_seatsCount
------------------------------
''');
  }
}

// 7. main funksiyada objectlar yaratish
void main() {
  // Generative constructor orqali
  Vehicle customVehicle = Vehicle(
    id: 'V-001',
    brand: 'Toyota',
    model: 'Hiace',
    type: 'van',
    year: 2018,
    fuelType: 'diesel',
    engineVolume: 2.5,
    isAutomatic: false,
    isElectric: false,
    mileage: 120000,
    wheelsCount: 4,
    seatsCount: 12,
  );

  // truck constructor
  Vehicle truck = Vehicle.truck(
    id: 'T-100',
    brand: 'Volvo',
    model: 'FH16',
    year: 2021,
    engineVolume: 5.0,
    mileage: 50000,
  );

  // bus constructor
  Vehicle bus = Vehicle.bus(
    id: 'B-777',
    brand: 'Mercedes-Benz',
    model: 'Sprinter',
    year: 2020,
    engineVolume: 3.0,
    mileage: 80000,
  );

  // sport constructor
  Vehicle sportCar = Vehicle.sport(
    id: 'S-911',
    brand: 'Porsche',
    model: '911 Turbo',
    year: 2023,
    engineVolume: 3.8,
    mileage: 15000,
  );

  // car redirect constructor
  Vehicle familyCar = Vehicle.car(
    id: 'C-123',
    brand: 'Hyundai',
    model: 'Elantra',
    year: 2022,
    engineVolume: 1.6,
    mileage: 20000,
    isAutomatic: true,
    isElectric: false,
  );

  // Getter / setter larni ishlatib ko‘ramiz
  familyCar.seatsCount = 4;    // o‘rindiqlar sonini o‘zgartirdik
  truck.wheelsCount = 8;       // yuk mashinasiga 8 ta g‘ildirak

  // Ma’lumotlarni chiqaramiz
  customVehicle.printInfo();
  truck.printInfo();
  bus.printInfo();
  sportCar.printInfo();
  familyCar.printInfo();
}
