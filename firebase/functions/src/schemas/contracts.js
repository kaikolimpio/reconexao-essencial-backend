const REQUEST_SCHEMAS = {
  RegisterUserRequest: [
    "firebaseUid",
    "email",
    "displayName",
    "photoUrl",
    "phoneNumber",
    "provider",
  ],
  ConsentRequest: [
    "consentType",
    "consentVersion",
    "accepted",
    "acceptedAt",
  ],
  AssessmentSubmissionRequest: [
    "templateSlug",
    "startedAt",
    "submittedAt",
    "answers",
  ],
  JournalEntryUpsert: [
    "entryDate",
    "energyLevel",
    "presenceLevel",
    "waterIntakeLabel",
    "restWindowLabel",
    "meals",
    "reflections",
  ],
  FastingSessionRequest: [
    "selectedWindowLabel",
    "selectedWindowHours",
    "startedAt",
    "status",
    "source",
  ],
  AutocuraSessionRequest: [
    "programSlug",
    "contentSlug",
    "startedAt",
    "completed",
    "interruptionReason",
  ],
};

module.exports = {
  REQUEST_SCHEMAS,
};
