class Item {
  final num id;
  final String name;
  final String cat;
  final num price;
  final String image;
  final num qty;
  final String unit;

  Item(
      {required this.id,
      required this.name,
      required this.cat,
      required this.price,
      required this.image,
      required this.qty,
      required this.unit});
}

final products = [
  Item(
      id: 1002,
      name: "Balaji Wafers",
      cat: "snakes",
      price: 45,
      image:
          "https://www.balajiwafers.com/wp-content/uploads/2019/04/T_Wafers_SimplySalted_Middle.png",
      qty: 45,
      unit: "PCS")
];
