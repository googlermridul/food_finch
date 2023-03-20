import 'package:flutter/material.dart';
import 'package:food_finch/screens/filter_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 20,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "Jost",
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () => tapHandler(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade100,
            ),
            child: Text(
              "Cooking up!",
              style: TextStyle(
                  fontFamily: "Jost",
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 20),
          buildListTile("Meals", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile("Filters", Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
