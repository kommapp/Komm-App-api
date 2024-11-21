part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

class UserApi {
  final UserApiDelegate apiDelegate;

  UserApi(ApiClient apiClient) : apiDelegate = UserApiDelegate(apiClient);

  Future<void> createUser(SignupRequest signupRequest, {Options? options}) async {
    final response = await apiDelegate.createUser(
      signupRequest,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  Future<User> getUser({Options? options}) async {
    final response = await apiDelegate.getUser(
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getUser_decode(__body);
  }

  Future<List<Hobby>> getUserHobbies({Options? options}) async {
    final response = await apiDelegate.getUserHobbies(
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getUserHobbies_decode(__body);
  }

  Future<void> updateUser({Options? options, User? user}) async {
    final response = await apiDelegate.updateUser(options: options, user: user);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  Future<void> validateUser({Options? options, ValidateUserRequest? validateUserRequest}) async {
    final response = await apiDelegate.validateUser(options: options, validateUserRequest: validateUserRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  Future<void> sendValidationEmail(String id, {Options? options}) async {
    final response = await apiDelegate.sendValidationEmail(
      id,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }

  Future<void> blockUser({Options? options, BlockUserRequest? blockUserRequest}) async {
    final response = await apiDelegate.blockUser(options: options, blockUserRequest: blockUserRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }

  Future<List<ProfileInfo>> getBlackListByProfileId(String profileId, {Options? options}) async {
    final response = await apiDelegate.getBlackListByProfileId(
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

    return await apiDelegate.getBlackListByProfileId_decode(__body);
  }

  Future<void> unblockUser({Options? options, UnblockUserRequest? unblockUserRequest}) async {
    final response = await apiDelegate.unblockUser(options: options, unblockUserRequest: unblockUserRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }

  Future<UserGiveawaysResponse> getUserGiveaways({Options? options}) async {
    final response = await apiDelegate.getUserGiveaways(
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getUserGiveaways_decode(__body);
  }

  Future<void> changePassword({Options? options, ChangePasswordRequest? changePasswordRequest}) async {
    final response = await apiDelegate.changePassword(
      options: options,
      changePasswordRequest: changePasswordRequest,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }

  Future<List<ProfileNotification>> getNotifications({Options? options}) async {
    final response = await apiDelegate.getNotifications(
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.getNotifications_decode(__body);
  }

  Future<void> verifyUser({Options? options, VerifyUserRequest? verifyUserRequest}) async {
    final response = await apiDelegate.verifyUser(options: options, verifyUserRequest: verifyUserRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }

  Future<void> validateVerificationCode(
      {Options? options, ValidateVerificationCodeRequest? validateVerificationCodeRequest}) async {
    final response = await apiDelegate.validateVerificationCode(
        options: options, validateVerificationCodeRequest: validateVerificationCodeRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }
}

class UserApiDelegate {
  final ApiClient apiClient;

  UserApiDelegate(this.apiClient);

  Future<ApiResponse> createUser(SignupRequest signupRequest, {Options? options}) async {
    Object postBody = signupRequest;

    // create path and map variables
    final __path = '/signup';

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
    postBody = LocalApiClient.serialize(postBody);

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> createUser_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> getUser({Options? options}) async {
    // create path and map variables
    final __path = '/user';

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

  Future<User> getUser_decode(Stream<List<int>> body) async =>
      (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'User') as User);

  Future<ApiResponse> getUserHobbies({Options? options}) async {
    // create path and map variables
    final __path = '/user/hobby';

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

  Future<List<Hobby>> getUserHobbies_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Hobby>') as List)
        .map((item) => item as Hobby)
        .toList();
  }

  Future<ApiResponse> updateUser({Options? options, User? user}) async {
    Object? postBody = user;

    // create path and map variables
    final __path = '/user';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
    final opt = options ?? Options();

    final contentTypes = ['application/json'];

    if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
    }
    postBody = postBody == null ? null : LocalApiClient.serialize(postBody);

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'PATCH';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> updateUser_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> validateUser({Options? options, ValidateUserRequest? validateUserRequest}) async {
    Object? postBody = validateUserRequest;

    // create path and map variables
    final __path = '/signup';

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
    opt.method = 'PATCH';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> validateUser_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> sendValidationEmail(String id, {Options? options}) async {
    // create path and map variables
    final __path = '/signup/email-validation/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>[];
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

  Future<void> sendValidationEmail_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> blockUser({Options? options, BlockUserRequest? blockUserRequest}) async {
    Object? postBody = blockUserRequest;

    // create path and map variables
    final __path = '/user/block';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
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

  Future<ApiResponse> getBlackListByProfileId(String profileId, {Options? options}) async {
    // create path and map variables
    final __path =
        '/user/blacklist/{profileId}'.replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ProfileInfo>> getBlackListByProfileId_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ProfileInfo>') as List)
        .map((item) => item as ProfileInfo)
        .toList();
  }

  Future<ApiResponse> unblockUser({Options? options, UnblockUserRequest? unblockUserRequest}) async {
    Object? postBody = unblockUserRequest;

    // create path and map variables
    final __path = '/user/unblock';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
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

  Future<void> unblockUser_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> getUserGiveaways({Options? options}) async {
    // create path and map variables
    final __path = '/user/giveaways';

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

  Future<UserGiveawaysResponse> getUserGiveaways_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'UserGiveawaysResponse')
        as UserGiveawaysResponse;
  }

  Future<ApiResponse> changePassword({Options? options, ChangePasswordRequest? changePasswordRequest}) async {
    Object? postBody = changePasswordRequest;

    // create path and map variables
    final __path = '/user/password';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
    final opt = options ?? Options();

    final contentTypes = ['application/json'];

    if (contentTypes.isNotEmpty && headerParams['Content-Type'] == null) {
      headerParams['Content-Type'] = contentTypes[0];
    }
    postBody = postBody == null ? null : LocalApiClient.serialize(postBody);

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'PATCH';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> changePassword_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> getNotifications({Options? options}) async {
    // create path and map variables
    final __path = '/user/notifications';

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

  Future<List<ProfileNotification>> getNotifications_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ProfileNotification>') as List)
        .map((item) => item as ProfileNotification)
        .toList();
  }

  Future<ApiResponse> validateVerificationCode(
      {Options? options, ValidateVerificationCodeRequest? validateVerificationCodeRequest}) async {
    Object? postBody = validateVerificationCodeRequest;

    // create path and map variables
    final __path = '/user/verify/validation';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
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

  Future<void> validateVerificationCode_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> verifyUser({Options? options, VerifyUserRequest? verifyUserRequest}) async {
    Object? postBody = verifyUserRequest;

    // create path and map variables
    final __path = '/user/verify';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    final authNames = <String>['oauth2'];
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

  Future<void> verifyUser_decode(Stream<List<int>> body) async {}
}