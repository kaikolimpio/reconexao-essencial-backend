const JSON_HEADERS = {
  "Content-Type": "application/json; charset=utf-8",
};

function buildCorsHeaders(methods) {
  return {
    ...JSON_HEADERS,
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Authorization, Content-Type",
    "Access-Control-Allow-Methods": methods.join(", "),
  };
}

function sendJson(response, statusCode, body, headers = {}) {
  response.status(statusCode).set({ ...JSON_HEADERS, ...headers }).send(body);
}

function sendOptions(response, methods) {
  response.status(204).set(buildCorsHeaders(methods)).send("");
}

module.exports = {
  JSON_HEADERS,
  buildCorsHeaders,
  sendJson,
  sendOptions,
};
