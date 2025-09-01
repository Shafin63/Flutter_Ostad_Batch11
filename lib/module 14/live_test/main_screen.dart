import 'package:flutter/material.dart';
import 'package:flutter1/module%2014/live_test/parse.dart';

import 'Recipe_class_model.dart';

const String jsonString = '''
{
  "recipes": [
    {
      "title": "Pasta Carbonara",
      "description": "Creamy pasta dish with bacon and cheese.",
      "ingredients": ["spaghetti", "bacon", "egg", "cheese"]
    },
    {
      "title": "Caprese Salad",
      "description": "Simple and refreshing salad with tomatoes, mozzarella, and basil.",
      "ingredients": ["tomatoes", "mozzarella", "basil"]
    }
  ]
}
''';

class RecipeListScreen extends StatelessWidget {
  final List<Recipe> recipes = parseRecipes(jsonString);

  RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Food Recipes")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            leading: const Icon(Icons.restaurant_menu),
            title: Text(recipe.title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(recipe.description),
          );
        },
      ),
    );
  }
}
