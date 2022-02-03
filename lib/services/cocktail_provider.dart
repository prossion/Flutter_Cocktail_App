import 'dart:convert';

import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:http/http.dart' as http;

class CocktailProvider {
  Future<List<Cocktail>> getCocktail() async {
    const randomUrl = 'https://www.thecocktaildb.com/api/json/v1/1/random.php';
    // const searchurl = '';
    final response = await http.get(Uri.parse(randomUrl));
    if (response.statusCode == 200) {
      final List<dynamic> cocktailJson = json.decode(response.body);
      return cocktailJson.map((json) => Cocktail.fromJson(json)).toList();
    } else if (response.statusCode == 401) {
      throw Exception("Unauthorized");
    } else if (response.statusCode == 500) {
      throw Exception("Server Error");
    } else {
      throw Exception("Something does wen't wrong");
    }
  }
}
