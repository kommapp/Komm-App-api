part of komm.api;

class ChatApi {
  final ChatApiDelegate apiDelegate;

  ChatApi(ApiClient apiClient) : apiDelegate = ChatApiDelegate(apiClient);

  Future<List<ChatMessagesInner>> getAccountLastMessageChats(String profileId, {Options? options}) async {
    final response = await apiDelegate.getAccountLastMessageChats(
      profileId,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getAccountLastMessageChats_decode(__body);
  }

  Future<List<ChatsByProfileResponse>> getChatByProfile(String profileId, {Options? options}) async {
    final response = await apiDelegate.getChatByProfile(
      profileId,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getChatByProfile_decode(__body);
  }

  Future<List<ChatMessage>> getChatMessages(String chatId, {Options? options}) async {
    final response = await apiDelegate.getChatMessages(
      chatId,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getChatMessages_decode(__body);
  }
}

class ChatApiDelegate {
  final ApiClient apiClient;

  ChatApiDelegate(this.apiClient);

  Future<ApiResponse> getAccountLastMessageChats(String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/chat/status'.replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ChatMessagesInner>> getAccountLastMessageChats_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ChatMessagesInner>') as List)
        .map((item) => item as ChatMessagesInner)
        .toList();
  }

  Future<ApiResponse> getChatByProfile(String profileId, {Options? options}) async {
    // create path and map variables
    final __path =
        '/chat/{profileId}'.replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ChatsByProfileResponse>> getChatByProfile_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ChatsByProfileResponseInner>')
            as List)
        .map((item) => item as ChatsByProfileResponse)
        .toList();
  }

  Future<ApiResponse> getChatMessages(String chatId, {Options? options}) async {
    // create path and map variables
    final __path =
        '/chat/{chatId}/messages'.replaceAll('{' + 'chatId' + '}', LocalApiClient.parameterToString(chatId)!);

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

  Future<List<ChatMessage>> getChatMessages_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ChatMessage>') as List)
        .map((item) => item as ChatMessage)
        .toList();
  }
}
