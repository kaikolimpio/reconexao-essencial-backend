import '../core/api_contract.dart';
import '../core/http_method.dart';

const progressRoutes = <ApiRouteContract>[
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/progress/modules',
    resource: 'progress',
    requestSchema: 'Empty',
    responseSchema: 'UserProgressListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/progress/modules/{moduleSlug}',
    resource: 'progress',
    requestSchema: 'UserProgressRequest',
    responseSchema: 'UserProgressResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/progress/modules/{moduleSlug}',
    resource: 'progress',
    requestSchema: 'UserProgressRequest',
    responseSchema: 'UserProgressResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/progress/modules/{moduleSlug}',
    resource: 'progress',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/evolucao/series',
    resource: 'evolucao',
    requestSchema: 'EvolutionSeriesQuery',
    responseSchema: 'EvolutionSeriesResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/evolucao/snapshots',
    resource: 'evolucao',
    requestSchema: 'EvolutionSnapshotRequest',
    responseSchema: 'EvolutionSnapshotResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/evolucao/snapshots/{snapshotId}',
    resource: 'evolucao',
    requestSchema: 'EvolutionSnapshotRequest',
    responseSchema: 'EvolutionSnapshotResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/evolucao/snapshots/{snapshotId}',
    resource: 'evolucao',
    requestSchema: 'EvolutionSnapshotRequest',
    responseSchema: 'EvolutionSnapshotResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/evolucao/snapshots/{snapshotId}',
    resource: 'evolucao',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
];
