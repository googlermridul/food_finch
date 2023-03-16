import 'package:flutter/material.dart';
import 'package:food_finch/data/data.dart';
import 'package:food_finch/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Finch Categories"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categoriesData
            .map((e) => CategoryItem(title: e.title, color: e.color))
            .toList(),
      ),
    );
  }
}
