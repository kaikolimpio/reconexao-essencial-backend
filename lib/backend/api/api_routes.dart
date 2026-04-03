import '../core/api_contract.dart';
import 'assessment_api.dart';
import 'auth_api.dart';
import 'autocura_api.dart';
import 'journal_api.dart';
import 'progress_api.dart';

final List<ApiRouteContract> apiV1Routes = [
  ...authRoutes,
  ...assessmentRoutes,
  ...journalRoutes,
  ...autocuraRoutes,
  ...progressRoutes,
];
