import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All Songs","Songs", "Artist", "Album", "PlayList"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
      ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(categories[index], style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? Colors.black87 : Colors.grey,
                ),
                ),
              ),
            ),
            SizedBox(height: 6),

            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 5),
                height: 7,
                width: 30,
                color: selectedIndex == index ? Colors.black : Colors.transparent,
              ),
            ),

          ],
        ),
      ),
    );
  }
}


