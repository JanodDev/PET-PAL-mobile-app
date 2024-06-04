import 'package:flutter/material.dart';

import 'package:pet_pal/models/products.dart';
import 'package:pet_pal/screen/constants.dart';
import 'package:pet_pal/screen/contactus.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        //wrap the container with SizeBox and set the width infinite
        SizedBox(
          width: double.infinity,
          child: Container(
            //35 percent of total screen height

            height: size.height * 0.30,
            decoration: BoxDecoration(color: kPrimaryColor),
            child: Image.asset(product.image),
          ),
        ),

        //about section
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: kBgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Male - 1.2years old - 4.5kg - LKR 22k",
                        style: TextStyle(
                            color: Color.fromARGB(255, 119, 68, 128),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    product.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    child: FloatingActionButton(
                      focusColor: kPrimaryColor,
                      backgroundColor: Color.fromARGB(255, 202, 89, 255),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) => ContactUsPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Contact us',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
