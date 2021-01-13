import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/Recipe.dart';

class RecommendedItem extends StatelessWidget {

  Recipe recipe;

  RecommendedItem({Key key, @required this.recipe }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(43, 43, 43, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 15.0,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 75,
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  left: 6.0,
                  right: 6.0,
                ),
                child: Image.asset(
                  recipe.imageUrl,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.mealTime,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color.fromRGBO(18, 143, 174, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Hellix',
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    recipe.title,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Hellix',
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      starsWidget(recipe.rating),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        recipe.calories,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromRGBO(245, 90, 0, 1),
                          fontFamily: 'Hellix',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.clock,
                        size: 10,
                        color: Color.fromRGBO(123, 123, 123, 1),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        recipe.cookTime,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromRGBO(123, 123, 123, 1),
                          fontFamily: 'Hellix',
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.conciergeBell,
                        size: 10,
                        color: Color.fromRGBO(123, 123, 123, 1),
                      ),
                      SizedBox(
                        width: 6.0,
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
                ],
              ),
            ],
          )
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
