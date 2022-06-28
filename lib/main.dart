import 'package:aider/models/institutes.dart';
import 'package:aider/src/features/categories/presentation/view/page/categories_institutes_screen.dart';
import 'package:aider/src/features/categories/presentation/view/page/categories_screen.dart';
import 'package:aider/src/features/details/presentation/view/page/institutes_details_screen.dart';
import 'package:aider/src/features/onboarding/presentation/view/page/onboarding_page.dart';
import 'package:aider/src/features/tabs/presentation/view/page/tabs_screen.dart';
import 'package:aider/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  List<Institutes> _favoriteInstitutes = [];

  void _toggleFavorite(Institutes institutes){
    setState(() {
      _favoriteInstitutes.contains(institutes) ? _favoriteInstitutes.remove(institutes) : _favoriteInstitutes.add(institutes);
    });
  }


  bool _isFavorite(Institutes institutes){
    return _favoriteInstitutes.contains(institutes);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aider',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      routes: {
        AppRoutes.ONBOARDING:(context) =>const OnboardingPage(),
        AppRoutes.HOME:(context) => TabsScreen(_favoriteInstitutes),
        AppRoutes.CATEGORIES_INSTITUTES:(context) => CategoriesInstitutesScreen(),
        AppRoutes.INSTITUTES_DETAILS:(context) => InstituteDetailsScreen(_toggleFavorite,_isFavorite)
      }
    );
  }
}
