void main(){
  Product laptop = Product(
    id: 101,
    name: "MacBook Pro M3",
    brand: "Apple",
    category: "Electronics",
    price: 1999.99,
    quantity: 50,
    soldQuantity: 15,
    sizes: ["14 inch", "16 inch"],
    colors: ["Space Gray", "Silver"],
    description: "Yangi avlod M4 pro chipiga ega kuchli noutbuk.",
  );

  print(laptop);
}

class Product{
  int id;
  String brand;
  String name;
  double price;
  int quantity;
  String? description;
  int soldQuantity;
  List<String> sizes;
  List<String> colors;
  String category;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    required this.quantity,
    required this.soldQuantity,
    required this.sizes,
    required this.colors,
    required this.category,

    this.description,
  }) :
        assert(id > 0),
        assert(price >= 0.0),
        assert(quantity >= 0);
  @override
  String toString() {
    return 'Product(\n'
        '  id: $id, \n'
        '  brand: $brand, \n'
        '  name: $name, \n'
        '  price: $price, \n'
        '  quantity: $quantity, \n'
        '  soldQuantity: $soldQuantity, \n'
        '  sizes: $sizes, \n'
        '  colors: $colors, \n'
        '  category: $category, \n'
        '  description: ${description ?? 'N/A'}\n'
        ')';
  }
}