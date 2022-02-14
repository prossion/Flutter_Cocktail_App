import 'package:equatable/equatable.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';

abstract class CocktailState extends Equatable {}

class CocktailInitial extends CocktailState {
  @override
  List<Object?> get props => [];
}

class CocktailLoading extends CocktailState {
  @override
  List<Object?> get props => [];
}

class CocktailLoaded extends CocktailState {
  final List<Cocktail> cocktail;
  CocktailLoaded({required this.cocktail});

  @override
  List<Object?> get props => [cocktail];
}

class CocktailError extends CocktailState {
  @override
  List<Object?> get props => [];
}
