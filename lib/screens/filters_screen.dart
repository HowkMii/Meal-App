import 'package:flutter/material.dart';
import 'package:meal/widgets/main_drawer.dart';
class FiltersScreen extends StatefulWidget {
  static const routeName ='/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
   bool _glutenFree = false;
   bool _lactoseFree = false;
   bool _vegan = false;
   bool _vegetarian = false; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your filters"),),
      body: Center(
        child: Text("Filters"),
        
        
      ),
      drawer: MainDrawer(),
    );
  }
}