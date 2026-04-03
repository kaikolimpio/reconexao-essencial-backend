class FastingSessionSchema {
  static const name = 'FastingSessionRequest';
  static const selectedWindowLabel = 'selectedWindowLabel';
  static const selectedWindowHours = 'selectedWindowHours';
  static const startedAt = 'startedAt';
  static const status = 'status';
  static const source = 'source';
}

class AutocuraSessionSchema {
  static const name = 'AutocuraSessionRequest';
  static const programSlug = 'programSlug';
  static const contentSlug = 'contentSlug';
  static const startedAt = 'startedAt';
  static const completed = 'completed';
  static const interruptionReason = 'interruptionReason';
}
