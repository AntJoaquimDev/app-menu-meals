// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meals.dart';
import '../components/meals_item.dart';

class CategoriesMealsSreen extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMealsSreen(this.meals);
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final CategoriesMeals = meals.where((meals) {
      return meals.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: CategoriesMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(CategoriesMeals[index]);
        },
      ),
    );
  }
}
