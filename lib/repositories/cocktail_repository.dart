import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/services/cocktail_provider.dart';

class CocktailRepository {
  final CocktailProvider _cocktailProvider;

  CocktailRepository({required CocktailProvider cocktailProvider})
      : _cocktailProvider = cocktailProvider;

  Future<List<Cocktail>> getAllCocktails() => _cocktailProvider.getCocktail();
}
