import 'package:aider/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesInstitutesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)!.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title as String),
      ),
      body: const Center(
        child: Text('Instituições por Categoria '),
      ),
    );
  }
}