import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/services/cocktail_provider.dart';

class CocktailRepository {
  CocktailProvider cocktailProvider;

  CocktailRepository({required this.cocktailProvider});

  Future<List<Cocktail>> getCocktail() => cocktailProvider.getCocktail();

  Future<List<Cocktail>> searchCocktail(query) =>
      cocktailProvider.searchCocktail(query);
}
