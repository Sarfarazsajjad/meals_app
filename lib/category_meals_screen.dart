import 'package:flutter/material.dart';

class CategoryMealsScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Recipes'),
      ),
      body: Center(
        child: Text('The Recipe for the category!'),
      ),
    );
  }
}
