import 'package:flutter/material.dart';
import 'package:pet_pal/models/traning_products.dart';
import 'package:pet_pal/screen/constants.dart';
import 'package:pet_pal/screen/video.dart';

class traningBody extends StatelessWidget {
  final traningProduct tproduct;

  const traningBody({super.key, required this.tproduct});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            //35 percent of total screen
            height: size.height * 0.35,
            decoration: BoxDecoration(color: kPrimaryColor),
            child: Image.asset(tproduct.image1),
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
                        tproduct.title1,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$${tproduct.price1}",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text(
                        "Info",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    tproduct.description1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100.0,
                    height: 40.0,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 202, 89, 255),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) => VideoSuggestionPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Demo',
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
