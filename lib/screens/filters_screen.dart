import 'package:flutter/material.dart';
import 'package:meal/widgets/main_drawer.dart';
class FiltersScreen extends StatefulWidget {
  static const routeName ='/filters';

  final Function  saveFilters;
  FiltersScreen(this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
   bool _glutenFree = false;
   bool _lactoseFree = false;
   bool _vegan = false;
   bool _vegetarian = false; 

   Widget buildSwitchListTile(String title,String descripton, bool currentVlue, Function updateVlue){
     return SwitchListTile(
                title: Text(title),
                value: currentVlue,
                subtitle: Text("descripton"),
                onChanged: updateVlue,
                );
   }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your filters"), actions: [IconButton(icon: Icon(Icons.save), onPressed:(){
        final Map<String,bool>selectedFilters ={
          'gluten':_glutenFree,
          'lactose':_lactoseFree,
          'vegan':_vegan,
          'vegetarian':_vegetarian

        };
        widget.saveFilters(selectedFilters);
      } )],),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Adjust your meal selection",style: Theme.of(context).textTheme.title,),

          ),
          Expanded(child: ListView(
            children: [
              buildSwitchListTile('Gluten-free', "Only include gluten-free meals ", _glutenFree, (newValue){setState(() {
                              _glutenFree=newValue;
                            });}),
              buildSwitchListTile('Lactose-free', "Only include Lactose-free meals ", _lactoseFree, (newValue){setState(() {
                              _lactoseFree=newValue;
                            });}),
              buildSwitchListTile('Vegan', "Only include Vegan meals ", _vegan, (newValue){setState(() {
                              _vegan=newValue;
                            });}),
              buildSwitchListTile('Vegetarian', "Only include Vegetarian meals ", _vegetarian, (newValue){setState(() {
                              _vegetarian=newValue;
                            });}),
            ],)),
        ],
        
        
        
      ),
      drawer: MainDrawer(),
    );
  }
}