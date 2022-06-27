import 'package:aider/components/institute_item.dart';
import 'package:aider/data/dummy_data.dart';
import 'package:aider/models/category.dart';
import 'package:aider/models/institutes.dart';
import 'package:flutter/material.dart';

class CategoriesInstitutesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryInstitutes = DUMMY_INSTITUTES.where((institute) {
      return institute.categories!.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title as String,
          style:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        shadowColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: categoryInstitutes.length,
        itemBuilder: (context, index){
          return InstituteItem(categoryInstitutes[index]);
        },
      ),
    );
  }
}