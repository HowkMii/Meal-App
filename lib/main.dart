import 'package:flutter/material.dart';
import './dummy_data.dart';
import './screens/filters_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal__detail_screen.dart';
import './screens/tabs_screen.dart';
import 'models/meal.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian':false
  };
  List<Meal>  _availableMeals=DUMMY_MEALS;
  List<Meal>  _favoriteMeals=[];
  
   void _setFilters(Map<String, bool> _filterData){
     setState(() {
            _filters = _filterData;
            _availableMeals = DUMMY_MEALS.where((meal){
              if(_filters['gluten'] && !meal.isGlutenFree){
                return false;
              };
               if(_filters['lactose'] && !meal.isLactoseFree){
                return false;
              }
               if(_filters['vegan'] && !meal.isVegan){
                return false;
              }
               if(_filters['vegetarian'] && !meal.isVegetarian){
                return false;
              }
              return true;
            }).toList();
          });
   }
  void _toggleFavorite(String mealId){
    final existingIndex =_favoriteMeals.indexWhere((meal) => meal.id==mealId);
    if (existingIndex>=0){
      setState(() {
              _favoriteMeals.removeAt(existingIndex);
            });
    }else{
      setState(() {
              _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id ==mealId));
            });
    }
  }
  bool _isMealFavorite(String id){
    return _favoriteMeals.any((meal) => meal.id == id);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1)
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 50, 50, 1)
          ),
          title: TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          ),

        )
      ),
      //home: CategoriesScreen(),
      routes: {
        '/': (ctx)=>TabsScreen(_favoriteMeals),
        CategoryMealsScreen.routeName:(context)=>CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName:(context)=>MealDetailScreen(_toggleFavorite,_isMealFavorite),
        FiltersScreen.routeName: (context)=>FiltersScreen(_filters,_setFilters),
      },
      //home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Meal"),
      ),
      body: null,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
