import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isNewArrive, isSuperHero, isArt, isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    this.isArt=false,
    this.isNewArrive=false,
    this.isSuperHero=false,
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
    isFavourite: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
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
    isNewArrive: true,
  ),





];

const String description =
    "";
