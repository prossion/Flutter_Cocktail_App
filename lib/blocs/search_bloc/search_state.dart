import 'package:equatable/equatable.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';

abstract class SearchCocktailState extends Equatable {
  const SearchCocktailState();

  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchCocktailState {
  @override
  List<Object?> get props => [];
}

class SearchLoading extends SearchCocktailState {
  @override
  List<Object?> get props => [];
}

class SearchLoaded extends SearchCocktailState {
  final List<Cocktail> cocktails;
  const SearchLoaded({required this.cocktails});

  @override
  List<Object?> get props => [cocktails];
}

class SearchError extends SearchCocktailState {
  @override
  List<Object?> get props => [];
}
