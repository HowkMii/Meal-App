import 'package:flutter/material.dart';
import './screens/filters_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal__detail_screen.dart';
import './screens/tabs_screen.dart';

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
   void _setFilters(Map<String, bool> _filterData){

   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        '/': (ctx)=>TabsScreen(),
        CategoryMealsScreen.routeName:(context)=>CategoryMealsScreen(),
        MealDetailScreen.routeName:(context)=>MealDetailScreen(),
        FiltersScreen.routeName: (context)=>FiltersScreen(_setFilters),
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
