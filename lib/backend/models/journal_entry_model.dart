class JournalMealModel {
  const JournalMealModel({required this.mealType, required this.description});

  final String mealType;
  final String description;

  Map<String, dynamic> toJson() {
    return {'mealType': mealType, 'description': description};
  }
}

class JournalReflectionsModel {
  const JournalReflectionsModel({
    this.emanacoesAlmaText,
    this.sincronicidadesText,
  });

  final String? emanacoesAlmaText;
  final String? sincronicidadesText;

  Map<String, dynamic> toJson() {
    return {
      'emanacoesAlmaText': emanacoesAlmaText,
      'sincronicidadesText': sincronicidadesText,
    };
  }
}

class JournalEntryModel {
  const JournalEntryModel({
    required this.entryDate,
    this.energyLevel,
    this.presenceLevel,
    this.waterIntakeLabel,
    this.restWindowLabel,
    this.meals = const [],
    this.reflections,
  });

  final String entryDate;
  final double? energyLevel;
  final double? presenceLevel;
  final String? waterIntakeLabel;
  final String? restWindowLabel;
  final List<JournalMealModel> meals;
  final JournalReflectionsModel? reflections;

  Map<String, dynamic> toJson() {
    return {
      'entryDate': entryDate,
      'energyLevel': energyLevel,
      'presenceLevel': presenceLevel,
      'waterIntakeLabel': waterIntakeLabel,
      'restWindowLabel': restWindowLabel,
      'meals': meals.map((item) => item.toJson()).toList(),
      'reflections': reflections?.toJson(),
    };
  }
}
