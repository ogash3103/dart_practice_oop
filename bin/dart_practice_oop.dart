import 'package:dart_practice_oop/Products/Brand.dart';
void main() {
  final brands = <Brand>[
    Brand(name: 'EKWB', productCount: 503, isSelected: false),
    Brand(name: 'SuperMicro', productCount: 498, isSelected: false),
    Brand(name: 'Apple', productCount: 497, isSelected: true),
    Brand(name: 'OKI', productCount: 493, isSelected: false),
    Brand(name: 'Crucial', productCount: 475, isSelected: false),
    Brand(name: 'TP-Link', productCount: 456, isSelected: true),
    Brand(name: 'HPE', productCount: 455, isSelected: false),
    Brand(name: 'Thermaltake', productCount: 430, isSelected: false),
    Brand(name: 'Netgear', productCount: 422, isSelected: false),
  ];

  final selectedCount = brands.fold<int>(
    0,
        (count, brand) => brand.isSelected ? count + 1 : count,
  );

  print('Tanlangan brendlar soni: $selectedCount');
}