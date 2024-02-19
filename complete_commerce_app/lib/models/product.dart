import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Colors.white,
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: "Experience the ultimate gaming with our Wireless Controller for PS4™. Ergonomically designed for comfort and precision gaming. It's a must-have for every gaming enthusiast.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: "Enhance your sporty style with Nike Sport White - Man Pant. These comfortable and stylish pants are perfect for your active lifestyle, whether you're hitting the gym or going for a casual walk.",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: "Level up your gaming gear with Gloves XC Omega - Polygon. Designed for maximum grip and comfort, these gloves will take your gaming experience to a whole new level. Stay ahead of the competition!",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: "Immerse yourself in high-quality audio with Logitech Head. Whether you're gaming, listening to music, or joining virtual meetings, these wireless headphones deliver crystal-clear sound and all-day comfort.",
    rating: 4.1,
    isFavourite: true,
  ),
];

