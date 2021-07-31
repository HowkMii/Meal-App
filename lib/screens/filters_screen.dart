import 'package:flutter/material.dart';
import 'package:meal/widgets/main_drawer.dart';
class FiltersScreen extends StatelessWidget {
  static const routeName ='/filters';
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