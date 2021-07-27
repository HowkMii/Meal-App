import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
class MealItem  extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({ @required this.title,@required this.imageUrl,@required this.duration,@required this.complexity,@required this.affordability});
  
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
                  child: Image.network(imageUrl, height: 200,width: double.infinity,fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20,
                  right:10 ,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26,color: Colors.white,),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Row(children: [Icon(Icons.schedule),SizedBox(width: 6,),Text("$duration min")]),
                  Row(children: [Icon(Icons.schedule),SizedBox(width: 6,),Text("$duration min")]),
                  Row(children: [Icon(Icons.schedule),SizedBox(width: 6,),Text("$duration min")]),
                ],
                
              ),
            ),
          ],),
      ),
    );
  }
}