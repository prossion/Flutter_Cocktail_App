import 'package:flutter/material.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/widgets/cocktail_page.dart';

class DetailScreen extends StatelessWidget {
  final Cocktail cocktail;
  const DetailScreen({Key? key, required this.cocktail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktail Detail Page'),
      ),
      body: SingleChildScrollView(
        child: CocktailPage(cocktail: cocktail),
      ),
    );
  }
}
