import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: "Soft Drinks",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZJzwsIAVXoZ_Xw5S9lJTdGtqdLeY0q9FXtA&usqp=CAU",
    ),
    const Category(
      name: "Smoothies",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyOdR0vVnpHdK-UBEEG0pw_vi5RgNo_OZgNQ&usqp=CAU",
    ),
    const Category(
      name: "Pizza",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6d6vy2DsWkgb77DcnkreWT7iiky8-05no2Q&usqp=CAU",
    ),
  ];
}
