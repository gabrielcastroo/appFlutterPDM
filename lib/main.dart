import 'package:aider/src/features/categories/presentation/view/page/categories_screen.dart';
import 'package:aider/src/features/home/presentation/view/page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aider',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}
