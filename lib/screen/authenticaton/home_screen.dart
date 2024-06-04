import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_pal/screen/about_us.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:pet_pal/screen/authenticaton/pet_store.dart';
import 'package:pet_pal/screen/authenticaton/veterinary.dart';
import 'package:pet_pal/screen/contactus.dart';
import 'package:pet_pal/screen/grooming.dart';

import 'package:pet_pal/screen/pet_traning.dart';
import 'package:pet_pal/screen/petfood.dart';
import 'package:pet_pal/screen/profile.dart';
import 'package:pet_pal/widgets/homeimagecontainer.dart';

class HomePage extends StatelessWidget {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 202, 89, 255),
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              height: height * 0.25,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (conext) => UserProfilePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/man.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 30,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Last Update: 20 April 2024",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: height * 0.75,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ImageContainer(
                          imageName: 'assets/petdoctor.jpg',
                          bottomText: "Veterinary",
                          myFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (conext) => const Veterinary(),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        ImageContainer(
                          imageName: 'assets/grooming.jpg',
                          bottomText: "Grooming",
                          myFunction: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (conext) => GroomingPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ImageContainer(
                            imageName: 'assets/petshop.jpg',
                            bottomText: "Pet Store",
                            myFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (conext) => const petstore(),
                                ),
                              );
                            }),
                        SizedBox(
                          width: 50,
                        ),
                        ImageContainer(
                            imageName: 'assets/train.jpg',
                            bottomText: "Pet Traning",
                            myFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (conext) => pettraning(),
                                ),
                              );
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ImageContainer(
                            imageName: 'assets/petfood.jpg',
                            bottomText: "Contact Us",
                            myFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (conext) => ContactUsPage(),
                                ),
                              );
                            }),
                        SizedBox(
                          width: 50,
                        ),
                        ImageContainer(
                            imageName: 'assets/aboutus.jpg',
                            bottomText: "About us",
                            myFunction: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (conext) => aboutus(),
                                ),
                              );
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
