import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_bloc.dart';
import 'package:flutter_cocktail_app/blocs/cocktail_bloc/cocktail_event.dart';
import 'package:flutter_cocktail_app/repositories/cocktail_repository.dart';
import 'package:flutter_cocktail_app/screens/home_screen.dart';
import 'package:flutter_cocktail_app/services/cocktail_provider.dart';
import 'package:http/http.dart' as http;

void main() {
  final cocktailRepository = CocktailRepository(
      cocktailProvider: CocktailProvider(httpClent: http.Client()));
  runApp(
    MyApp(cocktailRepository: cocktailRepository),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.cocktailRepository}) : super(key: key);

  final CocktailRepository cocktailRepository;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CocktailBloc(repository: cocktailRepository)..add(CocktailFetched()),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
