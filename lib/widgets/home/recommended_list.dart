import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nbase/helpers/constants.dart';
import 'package:nbase/models/product.dart';

class RecommendedList extends StatelessWidget {
  final List<Product> products = [
    Product(image: 'assets/bag_1.png', name: 'Bag', description: 'Beautiful bag', price: 2.33),
    Product(image: 'assets/cap_5.png', name: 'Cap', description: 'Cap with beautiful design', price: 10),
    Product(image: 'assets/jeans_1.png', name: 'Jeans', description: 'Jeans for you', price: 20),
    Product(image: 'assets/womanshoe_3.png', name: 'Woman Shoes', description: 'Shoes with special discount', price: 30),
    Product(image: 'assets/bag_10.png', name: 'Bag Express', description: 'Bag for your shops', price: 40),
    Product(image: 'assets/jeans_3.png', name: 'Jeans', description: 'Beautiful Jeans', price: 102.33),
    Product(image: 'assets/ring_1.png', name: 'Silver Ring', description: 'Description', price: 52.33),
    Product(image: 'assets/shoeman_7.png', name: 'Shoes', description: 'Description', price: 62.33),
    Product(image: 'assets/headphone_9.png', name: 'Headphones', description: 'Description', price: 72.33),


  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: kMediumYellow,
                ),
              ),
              Center(
                  child: Text(
                'Recommended',
                style: TextStyle(
                    color: kDarkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: StaggeredGridView.countBuilder(
    physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: InkWell(
                      // onTap: () => Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (_) => ProductPage(product:products[index]))),
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                                colors: [Colors.grey[500], Colors.grey[700]],
                                center: Alignment(0, 0),
                                radius: 0.6,
                                focal: Alignment(0, 0),
                                focalRadius: 0.1),
                          ),
                          child: Hero(
                              tag: products[index].image,
                              child: Image.asset(products[index].image))),
                    ),
                  ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
