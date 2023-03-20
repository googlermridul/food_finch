import 'package:flutter/material.dart';
import 'package:food_finch/widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: TextStyle(fontFamily: "Jost"),
        ),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Text("Filter"),
      ),
    );
  }
}
