class FavoriteData {
  final String productId;
  final bool isFavorite;

  FavoriteData({required this.productId, required this.isFavorite});

  factory FavoriteData.fromJson(Map<String, dynamic> json) =>
      FavoriteData(
          productId: json['productId'], isFavorite: json['isFavorite']);

  Map<String, dynamic> toJson() =>
      {
        'productId': productId,
        'isFavorite': isFavorite,
      };
}