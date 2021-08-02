import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';
class CategoryMealsScreen extends StatefulWidget {
  static const routeName ='category_meals';

  final List<Meal> availableMeals;
  CategoryMealsScreen(this.availableMeals);
  

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
 String categoryTitle;
 List<Meal> displayedMeals;
 @override
   void didChangeDependencies() {
     // TODO: implement didChangeDependencies
      final routeArg = ModalRoute.of(context).settings.arguments as Map<String,String>;
      final categoryId = routeArg['id'];
      categoryTitle = routeArg['title'];
      displayedMeals = DUMMY_MEALS.where((meal){
        return meal.categories.contains(categoryId);
    }).toList();
     super.didChangeDependencies();
   }

 
  void _removeMeal(String mealId){
    setState(() {
          displayedMeals.removeWhere((meal) => meal.id ==mealId);
        });
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle),),
      body: ListView.builder(
        itemBuilder:(ctx, index){
          return MealItem(
            id: displayedMeals[index].id,
            imageUrl: displayedMeals[index].imageUrl,
            title:displayedMeals[index].title ,
            duration: displayedMeals[index].duration,
            complexity: displayedMeals[index].complexity,
            affordability: displayedMeals[index].affordability,
            removeItem: _removeMeal,
          );
        } ,
        itemCount: displayedMeals.length,

      ),
      
    );
  }
}