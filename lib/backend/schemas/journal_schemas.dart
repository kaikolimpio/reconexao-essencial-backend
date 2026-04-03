class JournalEntryUpsertSchema {
  static const name = 'JournalEntryUpsert';
  static const entryDate = 'entryDate';
  static const energyLevel = 'energyLevel';
  static const presenceLevel = 'presenceLevel';
  static const waterIntakeLabel = 'waterIntakeLabel';
  static const restWindowLabel = 'restWindowLabel';
  static const meals = 'meals';
  static const reflections = 'reflections';
}

class JournalMealSchema {
  static const mealType = 'mealType';
  static const description = 'description';
}

class JournalReflectionsSchema {
  static const emanacoesAlmaText = 'emanacoesAlmaText';
  static const sincronicidadesText = 'sincronicidadesText';
}
