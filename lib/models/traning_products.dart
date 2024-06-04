//model or structure
//import 'package:flutter/material.dart';

class traningProduct {
  final String image1, title1, description1;
  final int price1, id1;

  traningProduct({
    required this.id1,
    required this.image1,
    required this.title1,
    required this.price1,
    required this.description1,
  });
}

List<traningProduct> tproducts = [
  traningProduct(
    id1: 1,
    title1: "Basic Obedience Training",
    price1: 30,
    description1: dummydisc,
    image1: 'assets/1.png',
  ),
  traningProduct(
    id1: 2,
    title1: "Puppy Socialization Training",
    price1: 40,
    description1: dummydisc,
    image1: 'assets/2.png',
  ),
  traningProduct(
    id1: 3,
    title1: "Guard Dog Training",
    price1: 50,
    description1: dummydisc,
    image1: 'assets/3.png',
  ),
  traningProduct(
    id1: 4,
    title1: "Behavior Bootcamp",
    price1: 60,
    description1: dummydisc,
    image1: 'assets/7.png',
  ),
  traningProduct(
    id1: 5,
    title1: "Canine Foundations",
    price1: 77,
    description1: dummydisc,
    image1: 'assets/5.png',
  ),
  traningProduct(
    id1: 6,
    title1: "Trick Training ",
    price1: 66,
    description1: dummydisc,
    image1: 'assets/6.png',
  ),
];

String dummydisc =
    "Join us for an interactive training session where we focus on building a strong bond with your furry friend while teaching essential obedience skills. ";
