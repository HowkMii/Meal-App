import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';
import 'package:meal/models/meal.dart';
class CategoryMealsScreen extends StatefulWidget {
  static const routeName ='category_meals';
  

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    final CategoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }
      ).toList();
    
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder:(ctx, index){
          return Text(CategoryMeals[index].title);
        } ,
        itemCount: CategoryMeals.length,

      ),
      
    );
  }
}