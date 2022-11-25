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
}

class ItemModel {
  static final items = [
    Item(
        id: 1001,
        name: "Kela  Wafers",
        cat: "snacks",
        comapny: "Balaji",
        price: 45,
        image:
            "https://www.jiomart.com/images/product/original/490025530/balaji-mari-banana-wafers-30-g-product-images-o490025530-p490025530-0-202207271957.jpg",
        qty: 45,
        unit: "PCS"),
    Item(
        id: 1002,
        name: "Potato  Wafers",
        cat: "snacks",
        comapny: "Balaji",
        price: 50,
        image:
            "https://www.balajiwafers.com/wp-content/uploads/2019/04/T_Wafers_SimplySalted_Middle.png",
        qty: 30,
        unit: "PCS"),
    Item(
        id: 1002,
        name: "Peri Peri  Wafers",
        cat: "snacks",
        comapny: "Balaji",
        price: 30,
        image:
            "https://www.balajiwafers.com/wp-content/uploads/2020/08/Wafers-Peri-Peri-210820.png",
        qty: 20,
        unit: "PCS")
  ];
}
