import 'package:flutter/material.dart';
import 'package:pet_pal/models/traning_products.dart';
import 'package:pet_pal/screen/constants.dart';

class traningProductsListContainer extends StatelessWidget {
  const traningProductsListContainer({
    super.key,
    required this.tproduct,
    required this.tpress,
  });
  final traningProduct tproduct;
  final VoidCallback tpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: [
          GestureDetector(
            onTap: tpress,
            child: Container(
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset(tproduct.image1),
            ),
          ),

          //price and name
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              textAlign: TextAlign.center,
              tproduct.title1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Text(
            '\LKR${tproduct.price1}K',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
