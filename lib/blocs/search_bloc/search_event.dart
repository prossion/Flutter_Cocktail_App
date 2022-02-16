import 'package:equatable/equatable.dart';

abstract class SearchCocktailEvent extends Equatable {
  const SearchCocktailEvent();

  @override
  List<Object?> get props => [];
}

class SearchCocktail extends SearchCocktailEvent {
  final String query;

  const SearchCocktail(this.query);
}
