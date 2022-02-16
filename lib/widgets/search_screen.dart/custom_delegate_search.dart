import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cocktail_app/blocs/search_bloc/search_bloc_barrel.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/widgets/search_screen.dart/search_result.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search cocktails...');

  final _suggestions = [
    'Mojito',
    'Old Fashioned',
    'Negroni',
    'Dry Martini',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return (IconButton(
      onPressed: () => close(context, null),
      tooltip: 'Close',
      icon: const Icon(Icons.arrow_back),
    ));
  }

  @override
  Widget buildResults(BuildContext context) {
    print('Inside custom search delegate and seacrh query is $query');

    BlocProvider.of<SearchCocktailBloc>(context, listen: false)
        .add(SearchCocktail(query));

    return BlocBuilder<SearchCocktailBloc, SearchCocktailState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SearchLoaded) {
          final cocktail = state.cocktails;
          if (cocktail.isEmpty) {
            return const Center(
              child: Text(
                'No cocktails with that name found',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            );
          }
          return ListView.builder(
            itemCount: cocktail.isNotEmpty ? cocktail.length : 0,
            itemBuilder: (context, int index) {
              Cocktail result = cocktail[index];
              return SearchResult(cocktailResult: result);
            },
          );
        } else if (state is SearchError) {
          return const Center(
            child: Text(
              'Error!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return Container();
    }
    return ListView.separated(
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _suggestions[index],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _suggestions.length);
  }
}
