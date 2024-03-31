class Item {
  final String name;
  final String imagePath, vector;
  final String price;

  Item({
    required this.name,
    required this.imagePath,
    required this.vector,
    required this.price,
  });
}

class FoundProduct {
  static Map<String, Item> products = {
    "linen": Item(
        name: "Linen dress",
        imagePath: "assets/images/linen.png",
        price: "\$52.00",
        vector: 'assets/images/Vector.png'),
    "fitted_waist": Item(
        name: "Filted Waist Dress",
        imagePath: "assets/images/filted_waist.png",
        price: "\$45.00",
        vector: 'assets/images/Vector(1).png'),
    "maxi": Item(
        name: "Maxi Dress",
        imagePath: "assets/images/maxi.png",
        price: "\$80.00",
        vector: 'assets/images/Vector(1).png'),
    "front_tie": Item(
        name: "Front Tie Mini dress",
        imagePath: "assets/images/front_tie.png",
        price: "\$80.00",
        vector: 'assets/images/Vector.png'),
    "ohara": Item(
        name: "Ohara Dress",
        imagePath: "assets/images/ohara.png",
        price: "\$80.00",
        vector: 'assets/images/Vector.png'),
    "tie_back": Item(
        name: "Tie Back Mini Dress",
        imagePath: "assets/images/tie_back.png",
        price: "\$80.00",
        vector: 'assets/images/Vector.png'),
    "leaves": Item(
        name: "Leaves Green Dress",
        imagePath: "assets/images/leaves.png",
        price: "\$80.00",
        vector: 'assets/images/Vector(1).png'),
    "off_shoulder": Item(
        name: "Off Shoulder Dress",
        imagePath: "assets/images/off_shoulder.png",
        price: "\$80.00",
        vector: 'assets/images/Vector(1).png'),
  };
}
