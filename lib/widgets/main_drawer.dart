import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/screens/filters_screen.dart';
class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title,IconData icon, Function tapHandler){
    return ListTile(
            leading: Icon(icon, size: 26),
            title: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
          ),
            onTap: tapHandler,
          );
  }
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
          buildListTile("Meal",Icons.restaurant,(){Navigator.of(context).pushNamed('/');}),
          buildListTile("Filters",Icons.settings,(){Navigator.of(context).pushNamed(FiltersScreen.routeName);}),

        ],
       ), 
      
      
    );
  }
}