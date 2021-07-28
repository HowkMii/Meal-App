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
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text("ingradient",style: Theme.of(context).textTheme.title,),
          ),
          Container(
            height: 200,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index)=>Card(
                color:Theme.of(context).accentColor,
              ),
              itemCount: selectedMeal.ingredients.length,

            ),
          ),
        ],
      ),
    );
  }
}