import 'package:flutter/material.dart';
import 'package:flutter_cocktail_app/widgets/cocktail_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktail App'),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Icon(Icons.search),
          ),
        ],
      ),
      body: const CocktailPage(),
    );
  }
}
