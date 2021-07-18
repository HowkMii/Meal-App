import 'package:flutter/material.dart';
import 'package:meal/dummy_data.dart';
class CategoriesScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      children: DUMMY_CATEGORIES.map((catData) => 
       Text(catData.title)
      
      ).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,

      ),
      
    );
  }
}