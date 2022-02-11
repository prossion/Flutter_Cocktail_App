class Cocktail {
  final String id;
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
      id: json['idDrink'] as String,
      nameDrink: json["strDrink"] as String,
      tagsDrink: json['strTags'] as String,
      categoryDrink: json['strCategory'] as String,
      alcoholicDrink: json['strAlcoholic'] as String,
      glassDrink: json['strGlass'] as String,
      instructions: json['strInstructions'] as String,
      photoDrink: json['strDrinkThumb'] as String,
      ingradient1: json['strIngredient1'] as String,
      ingradient2: json['strIngredient2'] as String,
      ingradient3: json['strIngredient3'] as String,
      ingradient4: json['strIngredient4'] as String,
      ingradient5: json['strIngredient5'] as String,
      ingradient6: json['strIngredient6'] as String,
      ingradient7: json['strIngredient7'] as String,
      ingradient8: json['strIngredient8'] as String,
      ingradient9: json['strIngredient9'] as String,
      ingradient10: json['strIngredient10'] as String,
      measure1: json['strMeasure1'] as String,
      measure2: json['strMeasure2'] as String,
      measure3: json['strMeasure3'] as String,
      measure4: json['strMeasure4'] as String,
      measure5: json['strMeasure5'] as String,
      measure6: json['strMeasure6'] as String,
      measure7: json['strMeasure7'] as String,
      measure8: json['strMeasure8'] as String,
      measure9: json['strMeasure9'] as String,
      measure10: json['strMeasure10'] as String,
      imageSource: json['strImageSource'] as String,
      dateModified: json['dateModified'] as String,
    );
  }
}
