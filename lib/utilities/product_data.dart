class Product {
  final String name;
  final String imagePath;
  final String price;

  Product({
    required this.name,
    required this.imagePath,
    required this.price,
  });
}

class ProductData {
  static Map<String, Product> products = {
    "turtle_neck": Product(
      name: "Turtleneck Sweater ",
      imagePath: "assets/images/turtle_neck.png",
      price: "\$39.99",
    ),
    "long_sleeve": Product(
      name: "Long Sleeve Dress",
      imagePath: "assets/images/long_sleeve.png",
      price: "\$45.00",
    ),
    "sportwear": Product(
      name: "Sportwear Set",
      imagePath: "assets/images/sportwe.png",
      price: "\$80.00",
    ),
  };
}
