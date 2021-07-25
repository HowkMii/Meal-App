import 'package:flutter/material.dart';
class MealItem  extends StatelessWidget {
  void selectMeal(){

  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:selectMeal ,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),elevation: 4,margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: ,
                  child: Image(),
                )
              ],
            )
          ],),
      ),
    );
  }
}