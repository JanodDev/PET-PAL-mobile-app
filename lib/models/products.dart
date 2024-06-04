//import 'package:flutter/material.dart';

class Product {
  String image, title, description;
  int price, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Leo",
    price: 23,
    description:
        "Meet Leo, a charming and affectionate small dog eagerly awaiting his forever home! Leo is a playful companion who loves cuddles, walks in the park, and chasing after tennis balls.  Come meet Leo today and discover the loyal and devoted friend you've been searching for!",
    image: 'assets/pup1.png',
  ),
  Product(
    id: 2,
    title: "Milo",
    price: 24,
    description:
        "Introducing Milo, a sweet and playful kitten in search of her forever family! Milo is curious and loves exploring her surroundings, she also enjoys snuggling up on your lap for some cuddle. Milo is the purrfect choice to brighten your days! Come meet her and see why she's sure to steal your heart.",
    image: 'assets/dog2.png',
  ),
  Product(
    id: 3,
    title: "Lily",
    price: 25,
    description:
        "Meet Lily, a charming and affectionate puppy eagerly awaiting her forever home! Lily is a playful companion who loves cuddles & walks in the park.  Come meet Lily today and discover the loyal and devoted friend you've been searching for!",
    image: 'assets/dog3.png',
  ),
  Product(
    id: 4,
    title: "Bailey",
    price: 35,
    description:
        "Meet Bailey, an adorable and playful puppy ready to wag his way into your heart! Bailey is a bundle of joy, with boundless energy and a love for life. Whether he's romping around the yard or curling up in your lap for a snooze, Bailey's sweet nature and irresistible charm will make him the perfect addition to your family.",
    image: 'assets/cat1.png',
  ),
  Product(
    id: 5,
    title: "Daisy",
    price: 44,
    description:
        "Daisy is an adorable puppy with a heart as big as her floppy ears! This sweet girl is full of energy and affection, always ready to play fetch or snuggle up for a cuddle.Come meet Daisy today and let her steal your heart with her irresistible charm!",
    image: 'assets/dog4.png',
  ),
];
