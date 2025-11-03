

import 'package:dart_practice_oop/Convertor.dart';
import 'package:dart_practice_oop/anagram.dart';

void main()
{
  ValidAnagram anagram = ValidAnagram('anagram', 'anagram');
  print(anagram.isAnagram());

  var c = Convertor();

  print('212°F = ${c.fahrenheitToCelsius(212)}°C');
  print('R = 5 → aylana uzunligi = ${c.circleLength(5)}');
  print('10 milya = ${c.milesToKm(10)} km');
  print('3 km = ${c.kmToMeters(3)} m');
  print('90 km/soat = ${c.kmhToMs(90)} m/s');
}