part of komm.api;

class GridsApi {
  final GridsApiDelegate apiDelegate;

  GridsApi(ApiClient apiClient) : apiDelegate = GridsApiDelegate(apiClient);

  Future<List<GridProfile>> getGridsByProfileId(String id, {Options? options}) async {
    final response = await apiDelegate.getGridsByProfileId(
      id,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getGridsByProfileId_decode(__body);
  }
}

class GridsApiDelegate {
  final ApiClient apiClient;

  GridsApiDelegate(this.apiClient);

  Future<ApiResponse> getGridsByProfileId(String id, {Options? options}) async {
    // create path and map variables
    final __path = '/grid/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
    final opt = options ?? Options();

    final contentTypes = [];

    if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
    }

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'GET';

    return await apiClient.invokeAPI(__path, queryParams, null, authNames, opt);
  }

  Future<List<GridProfile>> getGridsByProfileId_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<GridsByProfileResponseInner>')
            as List)
        .map((item) => item as GridProfile)
        .toList();
  }
}
