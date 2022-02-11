import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_bloc.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_state.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';

class CocktailPage extends StatelessWidget {
  const CocktailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CocktailBloc, CocktailState>(
      builder: (context, state) {
        if (state is CocktailInitial) {
          return const Center(
            child: Text('No data received'),
          );
        } else if (state is CocktailLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CocktailLoaded) {
          List<Cocktail> cocktails = [];
          cocktails = state.cocktail;
          return ListView.builder(
            itemCount: cocktails.length,
            itemBuilder: (context, index) {
              return CocktailPages(cocktail: cocktails[index]);
            },
          );
        } else if (state is CocktailError) {
          return const Center(
            child: Text('Error'),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

final pictureApi =
    'https://www.thecocktaildb.com/images/ingredients/gin-Small.png';

class CocktailPages extends StatelessWidget {
  final Cocktail cocktail;
  const CocktailPages({Key? key, required this.cocktail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(cocktail.photoDrink),
        Text(cocktail.nameDrink),
        Text(cocktail.ingradient1),
      ],
    );
  }
}
