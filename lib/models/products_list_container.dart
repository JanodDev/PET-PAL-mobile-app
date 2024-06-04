import 'package:flutter/material.dart';

import 'package:pet_pal/models/products.dart';
import 'package:pet_pal/screen/constants.dart';

//import '../screen/constants.dart';

class ProductsListContainer extends StatelessWidget {
  const ProductsListContainer({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              height: 170,
              width: 160,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 233, 252),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(product.image),
            ),
          ),

          //now we create title of the categories
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),

          Text(
            '\LKR${product.price}K',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}

/*class Homebanner extends StatelessWidget {
  const Homebanner({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              width: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(400),
                  child: Image.asset('assets/images/top1.jpg')),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text(
                    '"Pawsitively Everything Your Pet Needs!"',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Join us in creating a happier, healthier life for your beloved pets today!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
