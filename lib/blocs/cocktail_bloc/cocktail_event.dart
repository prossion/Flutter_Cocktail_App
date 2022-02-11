import 'package:equatable/equatable.dart';

abstract class CocktailEvent extends Equatable {
  const CocktailEvent();

  @override
  List<Object?> get props => [];
}

class CocktailFetched extends CocktailEvent {}
