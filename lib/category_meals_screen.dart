import 'package:flutter/material.dart';

class CategoryMealsScrean extends StatelessWidget {
  final String id;
  final String title;

  const CategoryMealsScrean(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text('The Recipe for the category!'),
      ),
    );
  }
}
