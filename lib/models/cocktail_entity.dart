class Cocktail {
  final int id;
  final String nameDrink;
  final String tagsDrink;
  final String categoryDrink;
  final String alcoholicDrink;
  final String glassDrink;
  final String instructions;
  final String photoDrink;
  final String ingradient1;
  final String ingradient2;
  final String ingradient3;
  final String ingradient4;
  final String ingradient5;
  final String ingradient6;
  final String ingradient7;
  final String ingradient8;
  final String ingradient9;
  final String ingradient10;
  final String measure1;
  final String measure2;
  final String measure3;
  final String measure4;
  final String measure5;
  final String measure6;
  final String measure7;
  final String measure8;
  final String measure9;
  final String measure10;
  final String imageSource;
  final String dateModified;

  Cocktail({
    required this.id,
    required this.nameDrink,
    required this.tagsDrink,
    required this.categoryDrink,
    required this.alcoholicDrink,
    required this.glassDrink,
    required this.instructions,
    required this.photoDrink,
    required this.ingradient1,
    required this.ingradient2,
    required this.ingradient3,
    required this.ingradient4,
    required this.ingradient5,
    required this.ingradient6,
    required this.ingradient7,
    required this.ingradient8,
    required this.ingradient9,
    required this.ingradient10,
    required this.measure1,
    required this.measure2,
    required this.measure3,
    required this.measure4,
    required this.measure5,
    required this.measure6,
    required this.measure7,
    required this.measure8,
    required this.measure9,
    required this.measure10,
    required this.imageSource,
    required this.dateModified,
  });

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      id: json['idDrink'],
      nameDrink: json['strDrink'],
      tagsDrink: json['strTags'],
      categoryDrink: json['strCategory'],
      alcoholicDrink: json['strAlcoholic'],
      glassDrink: json['strGlass'],
      instructions: json['strInstructions'],
      photoDrink: json['strDrinkThumb'],
      ingradient1: json['strIngredient1'],
      ingradient2: json['strIngredient2'],
      ingradient3: json['strIngredient3'],
      ingradient4: json['strIngredient4'],
      ingradient5: json['strIngredient5'],
      ingradient6: json['strIngredient6'],
      ingradient7: json['strIngredient7'],
      ingradient8: json['strIngredient8'],
      ingradient9: json['strIngredient9'],
      ingradient10: json['strIngredient10'],
      measure1: json['strMeasure1'],
      measure2: json['strMeasure2'],
      measure3: json['strMeasure3'],
      measure4: json['strMeasure4'],
      measure5: json['strMeasure5'],
      measure6: json['strMeasure6'],
      measure7: json['strMeasure7'],
      measure8: json['strMeasure8'],
      measure9: json['strMeasure9'],
      measure10: json['strMeasure10'],
      imageSource: json['strImageSource'],
      dateModified: json['dateModified'],
    );
  }
}
