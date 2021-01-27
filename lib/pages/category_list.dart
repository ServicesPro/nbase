import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nbase/helpers/constants.dart';
import 'package:nbase/models/category.dart';
import 'package:nbase/widgets/category/staggered_category_card.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<Category> categories = [
    Category(
      begin: Color(0xffFCE183),
      end: Color(0xffF68D7F),
      category: 'Gadgets',
      image: 'assets/jeans_5.png',
    ),
    Category(
      begin: Color(0xffF749A2),
      end: Color(0xffFF7375),
      category: 'Vêtements',
      image: 'assets/jeans_5.png',
    ),
    Category(
      begin: Color(0xff00E9DA),
      end: Color(0xff5189EA),
      category: 'Mode',
      image: 'assets/jeans_5.png',
    ),
    Category(
      begin: Color(0xffAF2D68),
      end: Color(0xff632376),
      category: 'Domicile',
      image: 'assets/jeans_5.png',
    ),
    Category(
      begin: Color(0xff36E892),
      end: Color(0xff33B2B9),
      category: 'Beauté',
      image: 'assets/jeans_5.png',
    ),
    Category(
      begin: Color(0xffF123C4),
      end: Color(0xff668CEA),
      category: 'Appareils électroménagers',
      image: 'assets/jeans_5.png',
    ),
  ];

  List<Category> searchResults;
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchResults = categories;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffF9F9F9),
      child: Container(
        margin: const EdgeInsets.only(top: kToolbarHeight),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment(-1, 0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Category List',
                  style: TextStyle(
                    color: kDarkGrey,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/search_icon.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    List<Category> tempList = List<Category>();
                    categories.forEach((category) {
                      if (category.category.toLowerCase().contains(value)) {
                        tempList.add(category);
                      }
                    });
                    setState(() {
                      searchResults.clear();
                      searchResults.addAll(tempList);
                    });
                    return;
                  } else {
                    setState(() {
                      searchResults.clear();
                      searchResults.addAll(categories);
                    });
                  }
                },
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (_, index) => Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: StaggeredCardCard(
                    begin: searchResults[index].begin,
                    end: searchResults[index].end,
                    categoryName: searchResults[index].category,
                    assetPath: searchResults[index].image,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
