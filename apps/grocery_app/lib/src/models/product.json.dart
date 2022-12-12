class Product {
  final int id;
  final String name;
  final String? description;
  final double price;
  final String image;
  final int categoryId;

  Product({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    required this.image,
    required this.categoryId,
  });

  Product copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    String? image,
    int? categoryId,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'categoryId': categoryId,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] as String,
      description: map['description'] as String?,
      price: map['price']?.toDouble() ?? 0.0,
      image: map['image'] as String,
      categoryId: map['categoryId']?.toInt() ?? 0,
    );
  }

  @override
  String toString() => 'Product('
      'id: $id, '
      'name: $name, '
      'description: $description, '
      'price: $price, '
      'image: $image, '
      'categoryId: $categoryId'
      ')';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.image == image &&
        other.categoryId == categoryId;
  }

  @override
  int get hashCode => Object.hash(
        id,
        name,
        description,
        price,
        image,
        categoryId.hashCode,
      );
}
