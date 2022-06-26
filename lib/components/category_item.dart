import 'package:aider/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(this.category);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(20),
      child: Text(
        category.title as String,
        style: Theme.of(context).textTheme.titleMedium,
        ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.5),
            category.color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight
          )
        ),
    );
  }
}