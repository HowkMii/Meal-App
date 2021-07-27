import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
class MealItem  extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({ @required this.title,@required this.imageUrl,@required this.duration,@required this.complexity,@required this.affordability});
  String get ComplexityText{
    switch(complexity){
      case Complexity.Simple:return 'Simple'; break;
      case Complexity.Challenging:return 'Challenging'; break;
      case Complexity.Hard:return 'Hard'; break;
      default: return 'unknow';break;
    }
  }
    String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable:return 'Affordable'; break;
      case Affordability.Pricey:return 'Pricey'; break;
      case Affordability.Luxurious:return 'Hard'; break;
      default: return 'unknow';break;
    }
  }
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [Icon(Icons.schedule),SizedBox(width: 6,),Text("$duration min")]),
                  Row(children: [Icon(Icons.work),SizedBox(width: 6,),Text("$ComplexityText ")]),
                  Row(children: [Icon(Icons.attach_money),SizedBox(width: 6,),Text("$affordabilityText ")]),
                ],
                
              ),
            ),
          ],),
      ),
    );
  }
}