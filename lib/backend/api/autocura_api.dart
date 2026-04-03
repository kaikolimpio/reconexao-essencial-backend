import '../core/api_contract.dart';
import '../core/http_method.dart';
import '../schemas/autocura_schemas.dart';

const autocuraRoutes = <ApiRouteContract>[
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/fasting/sessions',
    resource: 'fasting',
    requestSchema: 'Empty',
    responseSchema: 'FastingSessionListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/fasting/sessions',
    resource: 'fasting',
    requestSchema: FastingSessionSchema.name,
    responseSchema: 'FastingSessionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/fasting/sessions/{sessionId}',
    resource: 'fasting',
    requestSchema: FastingSessionSchema.name,
    responseSchema: 'FastingSessionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/fasting/sessions/{sessionId}',
    resource: 'fasting',
    requestSchema: FastingSessionSchema.name,
    responseSchema: 'FastingSessionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/fasting/sessions/{sessionId}',
    resource: 'fasting',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/autocura/programs',
    resource: 'autocura',
    requestSchema: 'Empty',
    responseSchema: 'AutocuraProgramListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/autocura/programs/{programSlug}/contents',
    resource: 'autocura',
    requestSchema: 'Empty',
    responseSchema: 'AutocuraContentListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/autocura/sessions',
    resource: 'autocura',
    requestSchema: 'Empty',
    responseSchema: 'AutocuraSessionListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/autocura/sessions',
    resource: 'autocura',
    requestSchema: AutocuraSessionSchema.name,
    responseSchema: 'AutocuraSessionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/autocura/sessions/{sessionId}',
    resource: 'autocura',
    requestSchema: AutocuraSessionSchema.name,
    responseSchema: 'AutocuraSessionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/autocura/sessions/{sessionId}',
    resource: 'autocura',
    requestSchema: AutocuraSessionSchema.name,
    responseSchema: 'AutocuraSessionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/autocura/sessions/{sessionId}',
    resource: 'autocura',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
];
