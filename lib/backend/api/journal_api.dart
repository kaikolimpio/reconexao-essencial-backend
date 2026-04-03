import '../core/api_contract.dart';
import '../core/http_method.dart';
import '../schemas/journal_schemas.dart';

const journalRoutes = <ApiRouteContract>[
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/journal/entries',
    resource: 'journal',
    requestSchema: 'JournalEntryQuery',
    responseSchema: 'JournalEntryListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/journal/entries',
    resource: 'journal',
    requestSchema: JournalEntryUpsertSchema.name,
    responseSchema: 'JournalEntryResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/journal/entries/{entryId}',
    resource: 'journal',
    requestSchema: 'Empty',
    responseSchema: 'JournalEntryResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/journal/entries/{entryId}',
    resource: 'journal',
    requestSchema: JournalEntryUpsertSchema.name,
    responseSchema: 'JournalEntryResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/journal/entries/{entryId}',
    resource: 'journal',
    requestSchema: JournalEntryUpsertSchema.name,
    responseSchema: 'JournalEntryResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/journal/entries/{entryId}',
    resource: 'journal',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
];
