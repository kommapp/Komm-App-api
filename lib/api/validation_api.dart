part of komm.api;

class ValidationApi {
  final ValidationApiDelegate apiDelegate;

  ValidationApi(ApiClient apiClient) : apiDelegate = ValidationApiDelegate(apiClient);

  Future<ValidationResponse> validateEmail({Options? options, ValidateEmailRequest? validateEmailRequest}) async {
    final response = await apiDelegate.validateEmail(options: options, validateEmailRequest: validateEmailRequest);

    if (![200].contains(response.statusCode)) {
      throw ApiException(500, 'Invalid response code ${response.statusCode} returned from API');
    }

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.validateEmail_decode(__body);
  }
}

class ValidationApiDelegate {
  final ApiClient apiClient;

  ValidationApiDelegate(this.apiClient);

  Future<ApiResponse> validateEmail({Options? options, ValidateEmailRequest? validateEmailRequest}) async {
    Object? postBody = validateEmailRequest;

    // create path and map variables
    final __path = '/validation/email-user';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>[];
    final opt = options ?? Options();

    final contentTypes = ['application/json'];

    if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
    }
    postBody = postBody == null ? null : LocalApiClient.serialize(postBody);

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<ValidationResponse> validateEmail_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'ValidationResponse')
        as ValidationResponse;
  }
}
