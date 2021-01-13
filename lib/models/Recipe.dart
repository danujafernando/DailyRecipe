import 'package:flutter/foundation.dart';

class Recipe {
  final String id;
  final String title;
  final String imageUrl;
  final String mealTime;
  final String calories;
  final String cookTime;
  final String serve;
  final int rating;
  final bool favorite;

  const Recipe({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.mealTime,
    @required this.cookTime,
    @required this.serve,
    @required this.calories,
    this.favorite = false,
    this.rating = 0
  });
}
