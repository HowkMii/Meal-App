import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  
  CategoryItem(
    
    this.id,
    this.title,
    this.color ,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title,style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[color.withOpacity(0.5),color] ,begin: Alignment.topLeft,end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      
    );
  }
}