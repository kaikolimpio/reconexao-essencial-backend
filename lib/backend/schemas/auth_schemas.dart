class RegisterUserRequestSchema {
  static const name = 'RegisterUserRequest';
  static const firebaseUid = 'firebaseUid';
  static const email = 'email';
  static const displayName = 'displayName';
  static const photoUrl = 'photoUrl';
  static const phoneNumber = 'phoneNumber';
  static const provider = 'provider';
}

class ConsentRequestSchema {
  static const name = 'ConsentRequest';
  static const consentType = 'consentType';
  static const consentVersion = 'consentVersion';
  static const accepted = 'accepted';
  static const acceptedAt = 'acceptedAt';
}
