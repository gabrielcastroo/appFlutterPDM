import 'package:aider/models/category.dart';
import 'package:aider/utils/app_routes.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_INSTITUTES,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        _selectCategory(context);
      }),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(65),
        bottomRight: Radius.circular(15),
        topRight: Radius.zero,
        bottomLeft: Radius.zero,
      ),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          category.title as String,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
              topRight: Radius.zero,
              bottomLeft: Radius.zero,
            ),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.5),
              category.color,
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
      ),
    );
  }
}
