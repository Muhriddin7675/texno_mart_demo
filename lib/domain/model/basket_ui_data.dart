class BasketUiData {
  final String id;
  final String name;
  final String image;
  final int price;
  final bool isCheck;
  final bool isFav;
  final int count;

  BasketUiData(
      {required this.id,
      required this.name,
      required this.image,
      required this.price,
      required this.isCheck,
      required this.isFav,
      required this.count});
}
