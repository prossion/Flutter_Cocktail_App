import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_bloc_barrel.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/widgets/cocktail_page.dart';
import 'package:flutter_cocktail_app/widgets/search_screen.dart/custom_delegate_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cocktail> cocktails = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktail App'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocListener<CocktailBloc, CocktailState>(
        listener: (context, state) {
          if (state is CocktailLoaded) {
            cocktails.addAll(state.cocktail);
          }
        },
        child: BlocBuilder<CocktailBloc, CocktailState>(
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
              cocktails = state.cocktail;
              return RefreshIndicator(
                onRefresh: () async {
                  cocktails = [];
                  BlocProvider.of<CocktailBloc>(context).add(CocktailFetched());
                },
                child: ListView.builder(
                  itemCount: cocktails.length,
                  itemBuilder: (context, index) {
                    return CocktailPage(cocktail: cocktails[index]);
                  },
                ),
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
        ),
      ),
    );
  }
}
