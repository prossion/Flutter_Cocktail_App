import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_event.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_state.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/repositories/cocktail_repository.dart';

class CocktailBloc extends Bloc<CocktailEvent, CocktailState> {
  final CocktailRepository _repository;
  CocktailBloc({required final CocktailRepository repository})
      : _repository = repository,
        super(CocktailInitial()) {
    on<CocktailFetched>(
      (event, emit) async {
        emit(CocktailInitial());
        try {
          List<Cocktail> _cocktailList = [];
          _cocktailList = await _repository.getCocktail();
          emit(CocktailLoaded(cocktail: _cocktailList));
        } catch (_) {
          emit(CocktailError());
          rethrow;
        }
      },
    );
  }
}
