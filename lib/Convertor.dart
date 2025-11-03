class Convertor
{
  // 1. Farengeyt -> Selsiy
  double fahrenheitToCelsius(double f) => (f - 32) * 5 / 9;

 // 2. Aylana uzunligi
double circleLength(double radius) => 2 * 3.14 * radius;

 // 3. Milya -> kilometr
double milesToKm(double miles) => miles * 1609.344;

// 4. Km -> m
double kmToMeters(double km) => km * 1000;

// 5. km/soat -> m/s
double kmhToMs(double kmh) => kmh / 3.6;

}