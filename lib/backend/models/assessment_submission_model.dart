class AssessmentAnswerModel {
  const AssessmentAnswerModel({
    required this.questionCode,
    required this.value,
  });

  final String questionCode;
  final bool value;

  Map<String, dynamic> toJson() {
    return {'questionCode': questionCode, 'value': value};
  }
}

class AssessmentSubmissionModel {
  const AssessmentSubmissionModel({
    required this.templateSlug,
    required this.answers,
    this.startedAt,
    this.submittedAt,
  });

  final String templateSlug;
  final List<AssessmentAnswerModel> answers;
  final String? startedAt;
  final String? submittedAt;

  Map<String, dynamic> toJson() {
    return {
      'templateSlug': templateSlug,
      'startedAt': startedAt,
      'submittedAt': submittedAt,
      'answers': answers.map((item) => item.toJson()).toList(),
    };
  }
}
