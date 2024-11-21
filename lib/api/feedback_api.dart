part of komm.api;

class FeedbackApi {
  final FeedbackApiDelegate apiDelegate;

  FeedbackApi(ApiClient apiClient) : apiDelegate = FeedbackApiDelegate(apiClient);

  Future<void> postFeedback(
      {Options? options,
      String? id,
      String? section,
      String? platform,
      String? version,
      String? osVersion,
      String? message,
      Uint8List? picture}) async {
    final response = await apiDelegate.postFeedback(
        options: options,
        id: id,
        section: section,
        platform: platform,
        version: version,
        osVersion: osVersion,
        message: message,
        picture: picture);

    if (response.statusCode == 204) {
      return;
    }

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }
}

class FeedbackApiDelegate {
  final ApiClient apiClient;

  FeedbackApiDelegate(this.apiClient);

  Future<ApiResponse> postFeedback(
      {Options? options,
      String? id,
      String? section,
      String? platform,
      String? version,
      String? osVersion,
      String? message,
      Uint8List? picture}) async {
    // create path and map variables
    final __path = '/feedback';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
    final opt = options ?? Options();

    if (headerParams.containsKey('Content-Type')) {
      headerParams['Content-Type'] = 'multipart/form-data';
    }
    final postBody = FormData.fromMap(Map.fromEntries(<String, dynamic>{
      'id'       : LocalApiClient.parameterToString(id),
      'section'  : LocalApiClient.parameterToString(section),
      'platform' : LocalApiClient.parameterToString(platform),
      'version'  : LocalApiClient.parameterToString(version),
      'osVersion': LocalApiClient.parameterToString(osVersion),
      'message'  : LocalApiClient.parameterToString(message),
      'picture'  : picture != null ? MultipartFile.fromBytes(picture, filename: "image.jpg"): null
    }.entries.where((m) => m.value != null)));

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> postFeedback_decode(Stream<List<int>> body) async {}
}
