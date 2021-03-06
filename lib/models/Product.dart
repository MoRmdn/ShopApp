import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description ,offer;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isNewArrive, isSuperHero, isArt, isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = true,
    this.isPopular = false,
    this.isArt = false,
    this.isNewArrive = false,
    this.isSuperHero = false,
    this.offer,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products
List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/StarWarsProsthesis.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "StarWars Arm™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/SuperHeroProsthesis.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Super Hero Arm",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/MultiSuperHero.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Super Hero",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/SuperManLeg.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Super Man Leg",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/StarWarsProsthesis.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "StarWars Arm™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/SuperHeroProsthesis.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Super Hero Arm",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "antiMan",
    price: 200,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "AntiMan",
    price: 100.20,
    description: description,
    rating: 5,
    isSuperHero: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/11.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan2",
    price: 120,
    description: description,
    rating: 4.3,
    isSuperHero: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/111.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hero3",
    price: 99,
    description: description,
    rating: 3.1,
    isSuperHero: true,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/1111.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Steel",
    price: 130.50,
    description: description,
    rating: 4.3,
    isSuperHero: true,
  ),
  Product(
    id: 12,
    images: [
      "assets/images/11111.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eco",
    price: 160,
    description: description,
    rating: 4.5,
    isSuperHero: true,
  ),Product(
    id: 13,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 14,
    images: [
      "assets/images/2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Art",
    price: 130,
    description: description,
    rating: 4.9,
    isArt: true,
  ),
  Product(
    id: 15,
    images: [
      "assets/images/22.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "GoldMan",
    price: 170,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 16,
    images: [
      "assets/images/222.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Art V.2",
    price: 300,
    description: description,
    rating: 4.9,
    isArt: true,
  ),
  Product(
    id: 17,
    images: [
      "assets/images/2222.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 18,
    images: [
      "assets/images/22222.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Venom",
    price: 299,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 19,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  /*Product(
    id: 7,
    images: [
      "assets/images/MultiSuperHero.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Super Hero",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/SuperManLeg.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Super Man Leg",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 12,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isNewArrive: true,
  ),
  Product(
    id: 13,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 14,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 15,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 16,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 17,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 18,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isNewArrive: true,
  ),
  Product(
    id: 19,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 20,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 21,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 22,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 23,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),*/
];

List<Product> demoProducts2 = [
  Product(
    id: 7,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "antiMan",
    price: 200,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "AntiMan",
    price: 100.20,
    description: description,
    rating: 5,
    isSuperHero: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/11.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan2",
    price: 120,
    description: description,
    rating: 4.3,
    isSuperHero: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/111.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hero3",
    price: 99,
    description: description,
    rating: 3.1,
    isSuperHero: true,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/1111.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Steel",
    price: 130.50,
    description: description,
    rating: 4.3,
    isSuperHero: true,
  ),
  Product(
    id: 12,
    images: [
      "assets/images/11111.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eco",
    price: 160,
    description: description,
    rating: 4.5,
    isSuperHero: true,
  ),

  /*Product(
    id: 7,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/ironMan.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "IronMan",
    price: 100.20,
    description: description,
    rating: 4.1,
    isSuperHero: true,
  ),*/
];

List<Product> demoProducts3 = [
  Product(
    id: 13,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 14,
    images: [
      "assets/images/2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Art",
    price: 130,
    description: description,
    rating: 4.9,
    isArt: true,
  ),
  Product(
    id: 15,
    images: [
      "assets/images/22.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "GoldMan",
    price: 170,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 16,
    images: [
      "assets/images/222.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Art V.2",
    price: 300,
    description: description,
    rating: 4.9,
    isArt: true,
  ),
  Product(
    id: 17,
    images: [
      "assets/images/2222.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 18,
    images: [
      "assets/images/22222.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Venom",
    price: 299,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 19,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  /*  Product(
    id: 8,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/art.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Multi Hero",
    price: 100.20,
    description: description,
    rating: 4.1,
    isArt: true,
  ),*/

];
List<Product> flashDeal = [
Product(
id: 1,
images: [
"assets/images/art.jpeg",
],
colors: [
Color(0xFFF6625E),
Color(0xFF836DB8),
Color(0xFFDECB9C),
Colors.white,
],
title: "Multi Hero",
price: 100.20,
description: description,
rating: 4.1,
isArt: true,
  offer:"U Saved 100\$",
),
Product(
id: 2,
images: [
"assets/images/2.jpg",
],
colors: [
Color(0xFFF6625E),
Color(0xFF836DB8),
Color(0xFFDECB9C),
Colors.white,
],
title: "Art",
price: 130,
description: description,
rating: 4.9,
isArt: true,
  offer:"U Saved 100\$",
),
];
const String description = "Want your part created on a specific 3D printing technology or in a specific material? Or maybe you have heat-resistance, strength, or part finish requirements? Let us know any special requirements.";
