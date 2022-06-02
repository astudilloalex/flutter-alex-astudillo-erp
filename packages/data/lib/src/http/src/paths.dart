/// All URL paths to comunicate with backend.
class Paths {
  const Paths._();

  /// Initial path to sign in user.
  static const String signIn = '/sign-in';

  // Common crud operations.
  static const String delete = '/delete';
  static const String deleteAll = '/delete-all';
  static const String deleteAllById = '/delete-all-by-id';
  static const String deleteById = '/delete-by-id';
  static const String findAll = '/find-all';
  static const String findAllById = '/find-all-by-id';
  static const String save = '/save';
  static const String saveAll = '/saveAll';
  static const String update = '/update';
  static const String updateAll = '/update-all';

  // Address URL paths.
  static const String addresses = '/addresses';

  // City URL paths.
  static const String cities = '/cities';

  // Company URL paths.
  static const String companies = '/companies';

  // Country URL paths.
  static const String countries = '/countries';

  // Department URL paths.
  static const String departments = '/departments';

  // Establishment URL paths.
  static const String establishments = '/establishments';

  // Gender URL paths.
  static const String genders = '/genders';

  // Job URL paths.
  static const String jobs = '/jobs';

  // Phone URL paths.
  static const String phones = '/phones';

  // Person document type URL paths.
  static const String personDocumentTypes = '/person-document-types';

  // Person URL paths.
  static const String persons = '/persons';

  // Privilege URL paths.
  static const String privileges = '/privileges';

  // Role URL paths.
  static const String roles = '/roles';

  // User URL paths.
  static const String users = '/users';
}
