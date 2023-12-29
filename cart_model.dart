class CartModel {
  int? id;
  String? name;
  int? price;
  String? img;
  bool? isExit;
  String? time;
  int? quantity;
  CartModel({
    this.id,
    this.name,
    this.price,
    this.img,
    this.quantity,
    this.isExit,
    this.time,
  });
  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    img = json['img'];
    quantity = json['quantity'];
    isExit = json['isExit'];
    time = json['time'];
  }
}
