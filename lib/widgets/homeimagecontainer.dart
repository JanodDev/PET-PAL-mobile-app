import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  String imageName;
  String bottomText;
  VoidCallback myFunction;

  ImageContainer(
      {super.key,
      required this.imageName,
      required this.bottomText,
      required this.myFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: myFunction,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image(
                        image: AssetImage(imageName),
                      ),
                    ),
                  )),
            ),
            Text(bottomText)
          ],
        ),
      ),
    );
  }
}
