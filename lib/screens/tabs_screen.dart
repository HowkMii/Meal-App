import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/favotites_screen.dart';
import '../widgets/main_drawer.dart';
class TabsScreen  extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}
int _selectedPageIndex = 0;
class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object >> _pages=[
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
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.category,),
            title: Text("Categories"),),
          BottomNavigationBarItem(
            icon:Icon(Icons.star,),
            title: Text("Favorites"),),
        ],
      ),
      drawer: MainDrawer(),
    );
  }

  
}