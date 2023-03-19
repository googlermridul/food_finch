import 'package:flutter/material.dart';
import 'package:food_finch/data/data.dart';
import 'package:food_finch/widgets/meal_item.dart';

class CategoryMeals extends StatelessWidget {
  static const routeName = '/category_meals';
  // final String id;
  // final String title;

  // const CategoryMeals({super.key, required this.id, required this.title});

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final id = routeArguments['id'];
    final title = routeArguments['title'];
    final meals = dummyMeals.where((element) {
      return element.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: TextStyle(fontFamily: "Jost"),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: meals[index].id,
            title: meals[index].title,
            imageUrl: meals[index].imageUrl,
            duration: meals[index].duration,
            complexity: meals[index].complexity,
            affordability: meals[index].affordability,
          );
        },
        itemCount: meals.length,
      ),
    );
  }
}
