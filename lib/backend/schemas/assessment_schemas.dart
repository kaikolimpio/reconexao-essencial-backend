class AssessmentSubmissionSchema {
  static const name = 'AssessmentSubmissionRequest';
  static const templateSlug = 'templateSlug';
  static const startedAt = 'startedAt';
  static const submittedAt = 'submittedAt';
  static const answers = 'answers';
}

class AssessmentAnswerSchema {
  static const questionCode = 'questionCode';
  static const value = 'value';
}
