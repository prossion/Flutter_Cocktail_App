import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/screens/detail_screen.dart';

class SearchResult extends StatelessWidget {
  final Cocktail cocktailResult;
  const SearchResult({Key? key, required this.cocktailResult})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(cocktail: cocktailResult),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: CachedNetworkImage(
                imageUrl: cocktailResult.photoDrink,
                fit: BoxFit.fill,
                placeholder: (context, url) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorWidget: (context, url, error) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text('Image not found'),
                    ),
                  );
                  // return Image.network(
                  //     'https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                cocktailResult.nameDrink,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                cocktailResult.alcoholicDrink,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
