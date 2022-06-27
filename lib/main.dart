import 'package:aider/src/features/categories/presentation/view/page/categories_institutes_screen.dart';
import 'package:aider/src/features/categories/presentation/view/page/categories_screen.dart';
import 'package:aider/src/features/details/presentation/view/page/institutes_details_screen.dart';
import 'package:aider/utils/app_routes.dart';
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
      routes: {
        AppRoutes.HOME:(context) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_INSTITUTES:(context) => CategoriesInstitutesScreen(),
        AppRoutes.INSTITUTES_DETAILS:(context) => const InstituteDetailsScreen()
      }
    );
  }
}
