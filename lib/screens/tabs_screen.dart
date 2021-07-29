import 'package:flutter/material.dart';
import 'package:meal/models/category.dart';
import 'package:meal/screens/categories_screen.dart';
import 'package:meal/screens/favotites_screen.dart';
class TabsScreen  extends StatefulWidget {


  @override
  _TabsScreenState createState() => _TabsScreenState();
}
int _selectedPageIndex = 0;
class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String,Object >> _pages=[
    {
      'page':CategoriesScreen(),
      'title':'Categories',
    },
     {
      'page':FavoritesScreen(),
      'title':'Your Favorites',
    },
  ];
  void _selectPage(int value) {
    setState(() {
          _selectedPageIndex=value;
        });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedPageIndex]['title'])),
      body: _pages[_selectedPageIndex]['title'],
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