import 'dart:convert';

import 'Recipe_class_model.dart';

List<Recipe> parseRecipes(String jsonStr) {
  final decoded = jsonDecode(jsonStr);
  final List<dynamic> recipeList = decoded['recipes'];
  return recipeList.map((e) => Recipe.fromJson(e)).toList();
}
