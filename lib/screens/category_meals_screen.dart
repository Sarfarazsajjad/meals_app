import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/widgets/meal_item.dart';

class CategoryMealsScrean extends StatelessWidget {
  static const String routeName = '/category-meals';
  const CategoryMealsScrean();
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String id = routeArgs['id'];
    final String title = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(meal: categoryMeals[index]);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
