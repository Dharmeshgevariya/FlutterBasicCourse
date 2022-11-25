class ItemModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String cat;
  final String comapny;
  final num price;
  final String image;
  final num qty;
  final String unit;

  Item(
      {required this.id,
      required this.name,
      required this.cat,
      required this.comapny,
      required this.price,
      required this.image,
      required this.qty,
      required this.unit});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        cat: map["cat"],
        comapny: map["comapny"],
        price: map["price"],
        image: map["image"],
        qty: map["qty"],
        unit: map["unit"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "cat": cat,
        "comapny": comapny,
        "price": price,
        "image": image,
        "qty": qty,
        "unit": unit
      };
}
