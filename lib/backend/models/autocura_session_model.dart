class AutocuraSessionModel {
  const AutocuraSessionModel({
    required this.programSlug,
    required this.contentSlug,
    required this.startedAt,
    this.completed = false,
    this.interruptionReason,
  });

  final String programSlug;
  final String contentSlug;
  final String startedAt;
  final bool completed;
  final String? interruptionReason;

  Map<String, dynamic> toJson() {
    return {
      'programSlug': programSlug,
      'contentSlug': contentSlug,
      'startedAt': startedAt,
      'completed': completed,
      'interruptionReason': interruptionReason,
    };
  }
}
