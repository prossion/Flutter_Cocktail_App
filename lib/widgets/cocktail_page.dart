import 'package:flutter/material.dart';
import 'package:flutter_cocktail_app/models/cocktail_entity.dart';
import 'package:flutter_cocktail_app/widgets/main_screen/main_screen.dart';

class CocktailPage extends StatelessWidget {
  final Cocktail cocktail;
  const CocktailPage({Key? key, required this.cocktail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PhotoWidget(photo: cocktail.photoDrink),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              // Title and id
              NameWidget(name: cocktail.nameDrink, id: cocktail.id),
              const SizedBox(height: 25),
              // glass type, alcoholic, category
              CategoryWidget(
                  glass: cocktail.glassDrink,
                  alcoholic: cocktail.alcoholicDrink,
                  category: cocktail.categoryDrink),
              const SizedBox(height: 25),
              // Ingadients
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Ingradients',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cocktail.ingradient1 == null
                          ? const Divider()
                          : IngadientsWidget(
                              ingradient: cocktail.ingradient1,
                              measure: cocktail.measure1),
                      const SizedBox(
                        width: 15,
                      ),
                      cocktail.ingradient2 == null
                          ? const Divider()
                          : IngadientsWidget(
                              ingradient: cocktail.ingradient2,
                              measure: cocktail.measure2),
                      const SizedBox(
                        width: 15,
                      ),
                      cocktail.ingradient3 == null
                          ? const Divider()
                          : IngadientsWidget(
                              ingradient: cocktail.ingradient3,
                              measure: cocktail.measure3),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      cocktail.ingradient4 == null
                          ? const Divider()
                          : IngadientsWidget(
                              ingradient: cocktail.ingradient4,
                              measure: cocktail.measure4),
                      const SizedBox(
                        width: 15,
                      ),
                      cocktail.ingradient5 == null
                          ? const Divider()
                          : IngadientsWidget(
                              ingradient: cocktail.ingradient5,
                              measure: cocktail.measure5),
                      const SizedBox(
                        width: 15,
                      ),
                      cocktail.ingradient6 == null
                          ? const Divider()
                          : IngadientsWidget(
                              ingradient: cocktail.ingradient6,
                              measure: cocktail.measure6),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              // instrution
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: InstructionWidget(
                  instructions: cocktail.instructions,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              cocktail.dateModified == null
                  ? const Divider()
                  : Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          const Text(
                            'Date Modified:',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            cocktail.dateModified,
                            style: const TextStyle(
                                color: Colors.black87, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
