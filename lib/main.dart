import 'package:flutter/material.dart';
import 'package:food_finch/screens/categories.dart';
import 'package:food_finch/screens/category_meals.dart';

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
        "/": (context) => CategoriesScreen(),
        CategoryMeals.routeName: (context) => CategoryMeals(),
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
