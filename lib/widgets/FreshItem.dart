import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/Recipe.dart';

class FreshItem extends StatelessWidget {
  
  Recipe recipe;

  FreshItem({Key key, @required this.recipe }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0,
      margin: EdgeInsets.only(
        right: 20.0,
      ),
      child: Stack(
        children: [
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(43, 43, 43, 1),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            left: 15.0,
            top: 15.0,
            child: GestureDetector(
              child: Icon(
                (recipe.favorite) ? Icons.favorite : Icons.favorite_outline,
                color: (recipe.favorite) ? Color.fromRGBO(245, 90, 0, 1) : Color.fromRGBO(123, 123, 123, 1),
                size: 30,
              ),
              onTap: () => {
                print("Clicked"),
              },
            ),
          ),
          Positioned(
            width: 144.0,
            height: 86.0,
            left: 40.0,
            top: 30.0,
            child: Image.asset(
              recipe.imageUrl,
            ),
          ),
          Positioned(
            left: 15.0,
            top: 100.0,
            child: Text(
              recipe.mealTime,
              style: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(18, 143, 174, 1),
                fontWeight: FontWeight.w500,
                fontFamily: 'Hellix',
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            top: 120.0,
            width: 120.0,
            child: Text(
              recipe.title,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Hellix',
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            top: 170.0,
            child: starsWidget(recipe.rating),
          ),
          Positioned(
            left: 15.0,
            top: 195.0,
            child: Text(
              recipe.calories,
              style: TextStyle(
                fontSize: 10.0,
                color: Color.fromRGBO(245, 90, 0, 1),
                fontFamily: 'Hellix',
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            bottom: 15.0,
            width: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  size: 10,
                  color: Color.fromRGBO(123, 123, 123, 1),
                ),
                Text(
                  recipe.cookTime,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Color.fromRGBO(123, 123, 123, 1),
                    fontFamily: 'Hellix',
                  ),
                ),
                Icon(
                  FontAwesomeIcons.conciergeBell,
                  size: 10,
                  color: Color.fromRGBO(123, 123, 123, 1),
                ),
                Text(
                  recipe.serve,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Color.fromRGBO(123, 123, 123, 1),
                    fontFamily: 'Hellix',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget starsWidget(rating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          (rating >= 1) ? Icons.star : Icons.star_outline,
          color: Color.fromRGBO(245, 90, 0, 1),
          size: 16.0,
        ),
        Icon(
          (rating >= 2) ? Icons.star : Icons.star_outline,
          color: Color.fromRGBO(245, 90, 0, 1),
          size: 16.0,
        ),
        Icon(
          (rating >= 3) ? Icons.star : Icons.star_outline,
          color: Color.fromRGBO(245, 90, 0, 1),
          size: 16.0,
        ),
        Icon(
          (rating >= 4) ? Icons.star : Icons.star_outline,
          color: Color.fromRGBO(245, 90, 0, 1),
          size: 16.0,
        ),
        Icon(
          (rating >= 5) ? Icons.star : Icons.star_outline,
          color: Color.fromRGBO(245, 90, 0, 1),
          size: 16.0,
        ),
      ],
    );
  }
}
