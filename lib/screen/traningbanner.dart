import 'package:flutter/material.dart';

import 'constants.dart';

class traningHomeBanner extends StatelessWidget {
  const traningHomeBanner({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 202, 89, 255),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Padding(
            //only top
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset('assets/4.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    '"Happy Training"',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Get ready to start your traning today!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
