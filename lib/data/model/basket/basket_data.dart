class BasketData {
   String productId;
   String name;
   String image;
   String price;
   int count;
   bool isChecked;

  BasketData(
      {required this.productId,
      required this.name,
      required this.image,
      required this.price,
      required this.count,
      required this.isChecked});

  factory BasketData.fromJson(Map<String, dynamic> json) => BasketData(
      productId: json['productId'],
      name: json['name'],
      image: json['image'],
      price: json['price'],
      count: json['count'],
      isChecked: json['isChecked']);

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'name': name,
        'image': image,
        'price': price,
        'count': count,
        'isChecked': isChecked,
      };
}
