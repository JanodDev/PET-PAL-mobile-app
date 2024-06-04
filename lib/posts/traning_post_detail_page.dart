import 'package:flutter/material.dart';
import 'package:pet_pal/models/traning_products.dart';
import 'package:pet_pal/posts/traning_detail_post_body.dart';
import 'package:pet_pal/screen/constants.dart';

class traningPostDetailPage extends StatelessWidget {
  final traningProduct tproduct;

  const traningPostDetailPage({super.key, required this.tproduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: traningBody(
        tproduct: tproduct,
      ),
    );
  }
}
