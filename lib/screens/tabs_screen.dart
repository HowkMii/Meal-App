import 'package:flutter/material.dart';
class TabsScreen  extends StatefulWidget {


  @override
  _TabsScreenState createState() => _TabsScreenState();
}
int _selectedPageIndex = 0;
class _TabsScreenState extends State<TabsScreen> {
  void _selectPage(int value) {
    setState(() {
          _selectedPageIndex=value;
        });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal")),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.category,),title: Text("Categories"),),
        ],
      ),
    );
  }

  
}