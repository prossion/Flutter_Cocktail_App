import 'dart:convert';

import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:http/http.dart' as http;

class CocktailProvider {
  final http.Client httpClent;

  CocktailProvider({required this.httpClent});

  Future<List<Cocktail>> getCocktail() async {
    const randomUrl = 'https://www.thecocktaildb.com/api/json/v1/1/random.php';
    print(randomUrl);
    // const searchurl = '';
    final response = await httpClent.get(Uri.parse(randomUrl),
        headers: {'Content-Type': 'application/json'});

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
