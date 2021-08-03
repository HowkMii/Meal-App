import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
class FavoritesScreen extends StatelessWidget {
    final List<Meal> favoriteMeals;
    FavoritesScreen( this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("You have  no favorite yet - start adding some!"),
      
    );
  }
}