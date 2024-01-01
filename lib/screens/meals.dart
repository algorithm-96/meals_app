import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meals_detail.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {super.key,
      this.title,
      required this.meals,
      });

  final String? title;
  final List<Meal> meals;


  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => MealsDetailScreen(
        meal: meal,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final textThemebodyLarge = Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(color: Theme.of(context).colorScheme.onBackground);

    Widget contentBody = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Try selecting a different category',
            style: textThemebodyLarge,
          )
        ],
      ),
    );

    if (meals.isNotEmpty) {
      contentBody = ListView.builder(
        itemBuilder: ((context, index) => MealItem(
              meal: meals[index],
              onSelectMeal: (meal) {
                selectMeal(context, meal);
              },
            )),
        itemCount: meals.length,
      );
    }
    if (title == null) {
      return contentBody;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: contentBody,
    );
  }
}
