import '../core/api_contract.dart';
import '../core/http_method.dart';
import '../schemas/assessment_schemas.dart';

const assessmentRoutes = <ApiRouteContract>[
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/assessments/templates',
    resource: 'assessments',
    requestSchema: 'Empty',
    responseSchema: 'AssessmentTemplateListResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.get,
    path: '/api/v1/assessments/templates/{slug}',
    resource: 'assessments',
    requestSchema: 'Empty',
    responseSchema: 'AssessmentTemplateResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.post,
    path: '/api/v1/assessments/submissions',
    resource: 'assessments',
    requestSchema: AssessmentSubmissionSchema.name,
    responseSchema: 'AssessmentSubmissionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.put,
    path: '/api/v1/assessments/submissions/{submissionId}',
    resource: 'assessments',
    requestSchema: AssessmentSubmissionSchema.name,
    responseSchema: 'AssessmentSubmissionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.patch,
    path: '/api/v1/assessments/submissions/{submissionId}',
    resource: 'assessments',
    requestSchema: AssessmentSubmissionSchema.name,
    responseSchema: 'AssessmentSubmissionResponse',
  ),
  ApiRouteContract(
    method: HttpMethod.delete,
    path: '/api/v1/assessments/submissions/{submissionId}',
    resource: 'assessments',
    requestSchema: 'Empty',
    responseSchema: 'OperationResponse',
  ),
];
