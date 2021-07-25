import 'package:flutter/material.dart';
class MealItem  extends StatelessWidget {
  final String imageUrl;
  const MealItem(this.imageUrl);
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
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  child: Image.network(imageUrl),
                )
              ],
            )
          ],),
      ),
    );
  }
}