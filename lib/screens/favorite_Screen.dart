import 'package:flutter/material.dart';
import 'package:meals/components/meals_item.dart';
import '../models/meals.dart';

class FavoritScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoritScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Container(
          child: Text('nenhuma refeição foi marcada como  Favorita'),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
