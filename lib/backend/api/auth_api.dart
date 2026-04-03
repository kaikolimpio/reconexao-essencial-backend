import '../core/api_contract.dart';
import '../core/http_method.dart';
import '../schemas/auth_schemas.dart';

const authRoutes = <ApiRouteContract>[
  ApiRouteContract(
    method: HttpMethod.options,
    path: '/api/v1/auth/registration',
    resource: 'auth',
    requestSchema: RegisterUserRequestSchema.name,
    responseSchema: 'AuthSessionResponse',
    authRequired: false,
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/auth/registration',
    resource: 'auth',
    requestSchema: RegisterUserRequestSchema.name,
    responseSchema: 'AuthSessionResponse',
    authRequired: false,
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/auth/sync-user',
    resource: 'auth',
    requestSchema: RegisterUserRequestSchema.name,
    responseSchema: 'AuthUserResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/auth/me',
    resource: 'auth',
    requestSchema: 'Empty',
    responseSchema: 'AuthUserResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/auth/me',
    resource: 'auth',
    requestSchema: RegisterUserRequestSchema.name,
    responseSchema: 'AuthUserResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/auth/me',
    resource: 'auth',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/auth/consents',
    resource: 'auth',
    requestSchema: ConsentRequestSchema.name,
    responseSchema: 'ConsentResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/auth/consents/{consentType}',
    resource: 'auth',
    requestSchema: ConsentRequestSchema.name,
    responseSchema: 'ConsentResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/auth/consents/{consentType}',
    resource: 'auth',
    requestSchema: ConsentRequestSchema.name,
    responseSchema: 'ConsentResponse',
  ),
];
