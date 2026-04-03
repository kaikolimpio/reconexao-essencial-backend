import 'http_method.dart';

class ApiRouteContract {
  const ApiRouteContract({
    required this.method,
    required this.path,
    required this.resource,
    required this.requestSchema,
    required this.responseSchema,
    this.authRequired = true,
  });

  final HttpMethod method;
  final String path;
  final String resource;
  final String requestSchema;
  final String responseSchema;
  final bool authRequired;
}
