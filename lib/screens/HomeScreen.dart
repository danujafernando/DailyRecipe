import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/FreshItem.dart';
import '../widgets/Recommendeditem.dart';

import '../dummyData.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  double xoffSet = 0;
  double yoffSet = 0;
  double borderRadius = 0;
  double angle = 0;

  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    xoffSet = 0;
    yoffSet = 0;
    borderRadius = 0;
    angle = 0;
    isOpen = false;
  }

  void changeMenu() {
    print("hello this clicked");
    setState(() {
      isOpen = !isOpen;
      xoffSet = (isOpen) ? 190 : 0;
      yoffSet = (isOpen) ? 170 : 0;
      angle = (isOpen) ? -0.15 : 0;
      borderRadius = (isOpen) ? 50 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedContainer(
      transform: Matrix4Transform()
          .translate(x: xoffSet, y: yoffSet)
          .rotate(angle)
          .matrix4,
      duration: Duration(milliseconds: 250),
      child: Container(
        width: double.infinity,
        height: size.height,
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(1, 1, 1, 1),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(parentAction: changeMenu),
            SizedBox(
              height: 25,
            ),
            Text(
              'Bonjour, Emma',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Hellix',
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(123, 123, 123, 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'What would you like to cook today?',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'AbrilFatface',
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SearchWidget(),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Fresh Recipes",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Hellix',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(245, 90, 0, 1),
                      fontFamily: 'Hellix',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () => {
                    print("Clicked"),
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 25.0,
              ),
              height: 240.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FreshRecipes.length,
                itemBuilder: (ctx, index) {
                  return FreshItem(recipe: FreshRecipes[index]);
                },
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Color.fromRGBO(43, 43, 43, 1),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontFamily: 'Hellix',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(245, 90, 0, 1),
                      fontFamily: 'Hellix',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () => {
                    print("Clicked"),
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: RecommendedRecipes.length,
                itemBuilder: (ctx, index) {
                  return RecommendedItem(recipe: RecommendedRecipes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
