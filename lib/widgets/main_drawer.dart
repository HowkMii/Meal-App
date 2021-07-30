import 'package:flutter/material.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            padding: EdgeInsets.all(30),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,

            child: Text('Cooking up!',style: TextStyle(
              fontSize: 26,fontWeight: FontWeight.w900,color: Colors.white
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.restaurant, size: 26),
            title: Text(
              "Meal",
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
          ),
            onTap: (){},
          ),
        ],
       ), 
      
      
    );
  }
}