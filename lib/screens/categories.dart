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
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: categoriesData
            .map((e) => CategoryItem(
                  id: e.id,
                  title: e.title,
                  color: e.color,
                  image: e.image,
                ))
            .toList(),
      ),
    );
  }
}
