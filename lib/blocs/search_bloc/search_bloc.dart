import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cocktail_app/blocs/search_bloc/search_event.dart';
import 'package:flutter_cocktail_app/blocs/search_bloc/search_state.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/repositories/cocktail_repository.dart';

class SearchCocktailBloc
    extends Bloc<SearchCocktailEvent, SearchCocktailState> {
  final CocktailRepository _repository;
  SearchCocktailBloc({required final CocktailRepository repository})
      : _repository = repository,
        super(SearchInitial()) {
    on<SearchCocktail>(_searchCocktail);
  }

  Future<void> _searchCocktail(
      SearchCocktail event, Emitter<SearchCocktailState> emit) async {
    emit(SearchInitial());
    try {
      List<Cocktail> cocktails = await _repository.searchCocktail(event.query);
      emit(SearchLoaded(cocktails: cocktails));
    } catch (_) {
      emit(SearchError());
      rethrow;
    }
  }
}
