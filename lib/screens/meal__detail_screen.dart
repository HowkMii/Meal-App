import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';


class MealDetailScreen extends StatelessWidget {
  static const routeName = 'meal_detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id ==mealId);
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: Column(
        children: [
          Container(
            width:double.infinity,
            height: 300,
            child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
          
          ),
        ],
      ),
    );
  }
}