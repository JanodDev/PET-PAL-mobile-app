import 'package:flutter/material.dart';

import 'package:pet_pal/models/products.dart';
import 'package:pet_pal/screen/constants.dart';

import 'detail_post_body.dart';

class PostDeatilPage extends StatelessWidget {
  final Product product;

  const PostDeatilPage({
    super.key,
    required this.product,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
