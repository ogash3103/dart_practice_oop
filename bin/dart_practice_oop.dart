import 'package:dart_practice_oop/shape.dart';

void main(){
  // Static methodlar class orqali chaqiriladi (obyekt shart emas)
  print("Kvadrat yuzi (side=5): ${Shape.area(5)}");         // 25
  print("Tortburchak yuzi (4x6): ${Shape.area(4, 6)}");     // 24
  print("Doira yuzi (r=3): ${Shape.circleArea(3)}");        // ~28.27

  print("-----");

  dynamic s = Shape();

  // Mavjud bo‘lmagan method chaqirilsa -> noSuchMethod ishlaydi
  s.drawShape();
}