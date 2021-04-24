import 'package:flutter/material.dart';

class CategoryMealsScrean extends StatelessWidget {
  static const String routeName = '/category-meals';
  const CategoryMealsScrean();
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String id = routeArgs['id'];
    final String title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('The Recipe for the category!'),
      ),
    );
  }
}
