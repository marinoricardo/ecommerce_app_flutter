// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class Produto {
  int? id;
  String? name;
  int? price;
  String? description;
  String? quantity;
  String? image;

  Produto(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.quantity,
      this.image});

  Produto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    description = json['description'];
    quantity = json['quantity'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['description'] = this.description;
    data['quantity'] = this.quantity;
    data['image'] = this.image;
    return data;
  }
}
