import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesInstitutesScreen extends StatelessWidget {
  const CategoriesInstitutesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instituições'),
      ),
      body: const Center(
        child: Text('Instituições por Categoria'),
      ),
    );
  }
}