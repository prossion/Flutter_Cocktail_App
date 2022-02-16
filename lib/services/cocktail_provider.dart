import 'dart:convert';

import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:http/http.dart' as http;

class CocktailProvider {
  final http.Client httpClent;

  CocktailProvider({required this.httpClent});

  Future<List<Cocktail>> getCocktail() => _getCocktailFromUrl(
      'https://www.thecocktaildb.com/api/json/v1/1/random.php');

  Future<List<Cocktail>> searchCocktail(String query) => _getCocktailFromUrl(
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=$query');

  Future<List<Cocktail>> _getCocktailFromUrl(String url) async {
    final response = await httpClent
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final cocktail = json.decode(response.body);
      return (cocktail["drinks"] as List)
          .map((cocktails) => Cocktail.fromJson(cocktails))
          .toList();
    } else if (response.statusCode == 401) {
      throw Exception("Unauthorized");
    } else if (response.statusCode == 500) {
      throw Exception("Server Error");
    } else {
      throw Exception("Something does wen't wrong");
    }
  }
}
