import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String imageUrl;
  final String category;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        category,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    const Product(
      name: "Pepsi",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_lOfOcGqiL9e1xsmQpFpGdNYqeky0S8V54w&usqp=CAU",
      category: "Soft Drinks",
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: "Coca Cola",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL0hSShXWlHwsF6WihpIsXbGAcFk1a4VgBbA&usqp=CAU",
      category: "Soft Drinks",
      price: 2.56,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Fanta",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOey3T5WDTpKSDXPv-Sj-C9aBZi-V5Ig3lPA&usqp=CAU",
      category: "Soft Drinks",
      price: 2.10,
      isRecommended: false,
      isPopular: true,
    ),
    const Product(
      name: "Oreo Shake",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8wiikWF9oJP_tbaH2qrLJOXxaxFwj0JCzZg&usqp=CAU",
      category: "Smoothies",
      price: 4.50,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Pizza",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXCUug2yPabV9ilQgthmMhKPRAopTNf-hgUQ&usqp=CAU",
      category: "Pizza",
      price: 4.50,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
