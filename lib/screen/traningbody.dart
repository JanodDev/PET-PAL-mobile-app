import 'package:flutter/material.dart';
import 'package:pet_pal/models/traning_products.dart';
import 'package:pet_pal/models/traning_product_list_con.dart';
import 'package:pet_pal/posts/traning_post_detail_page.dart';
import 'package:pet_pal/screen/traningbanner.dart';

class traningBody extends StatefulWidget {
  @override
  State<traningBody> createState() => _traningBodyState();
}

class _traningBodyState extends State<traningBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //banner
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        //position
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          traningHomeBanner(size: size),
          //category
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Sessions',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          //column
          Expanded(
            child: GridView.builder(
              itemCount: tproducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.60,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: ((context, index) => traningProductsListContainer(
                    tproduct: tproducts[index],
                    tpress: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => traningPostDetailPage(
                          tproduct: tproducts[index],
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
