import 'package:flutter/material.dart';
import 'package:food_finch/screens/categories.dart';
import 'package:food_finch/screens/category_meals.dart';
import 'package:food_finch/screens/filter_screen.dart';
import 'package:food_finch/screens/meal_detail.dart';
import 'package:food_finch/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Jost',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleSmall: const TextStyle(
                fontFamily: 'lato',
                fontSize: 20,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        "/": (context) => TabsScreen(),
        CategoryMeals.routeName: (context) => CategoryMeals(),
        MealDetail.routeName: (context) => MealDetail(),
        FilterScreen.routeName: (context) => FilterScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: ((context) => CategoriesScreen()));
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: ((context) => CategoriesScreen()));
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Finch"),
      ),
      body: const Text(
        "Hello World",
      ),
    );
  }
}
