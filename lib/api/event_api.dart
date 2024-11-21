part of komm.api;

class EventApi {
  final EventApiDelegate apiDelegate;

  EventApi(ApiClient apiClient) : apiDelegate = EventApiDelegate(apiClient);

  /// Create an event
  Future<void> createEvent({Options? options, CreateEventRequest? createEventRequest}) async {
    final response = await apiDelegate.createEvent(options: options, createEventRequest: createEventRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  /// Cancel an event
  Future<void> cancelEventByEventId({Options? options, CancelEventRequest? cancelEventRequest}) async {
    final response = await apiDelegate.cancelEventByEventId(options: options, cancelEventRequest: cancelEventRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  /// Exit an event
  Future<void> exitEventByEventAndProfileId(String eventId, String profileId, {Options? options}) async {
    final response = await apiDelegate.exitEventByEventAndProfileId(
      eventId,
      profileId,
      options: options,
    );

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  /// Event By Id
  Future<Event> getEventById(String eventId, String profileId, {Options? options}) async {
    final response = await apiDelegate.getEventById(
      eventId,
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

    return await apiDelegate.getEventById_decode(__body);
  }

  /// Get event participants
  Future<List<EventParticipant>> getEventParticipantsByEventId(String eventId, String profileId,
      {Options? options}) async {
    final response = await apiDelegate.getEventParticipantsByEventId(
      eventId,
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

    return await apiDelegate.getEventParticipantsByEventId_decode(__body);
  }

  /// Get past profile events by profile id
  Future<List<ProfileEvent>> getLastProfileEventsByProfileId(String profileId, {Options? options}) async {
    final response = await apiDelegate.getLastProfileEventsByProfileId(
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

    return await apiDelegate.getLastProfileEventsByProfileId_decode(__body);
  }

  /// Get Profile Events By Id
  Future<List<ProfileEvent>> getProfileEventsById(String profileId, {Options? options}) async {
    final response = await apiDelegate.getProfileEventsById(
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

    return await apiDelegate.getProfileEventsById_decode(__body);
  }

  /// Get Profile Other Events By Id
  Future<List<ProfileEvent>> getProfileOtherEventsByProfileId(String profileId, {Options? options}) async {
    final response = await apiDelegate.getProfileOtherEventsByProfileId(
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

    return await apiDelegate.getProfileOtherEventsByProfileId_decode(__body);
  }

  /// Request to participate in an Event
  Future<void> requestParticipantEvent({Options? options, EventParticipationRequest? eventParticipationRequest}) async {
    final response = await apiDelegate.requestParticipantEvent(options: options, request: eventParticipationRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  /// Update participant in an Event
  Future<void> updateParticipantEvent({Options? options, UpdateParticipantRequest? updateParticipantRequest}) async {
    final response =
        await apiDelegate.updateParticipantEvent(options: options, updateParticipantRequest: updateParticipantRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  Future<void> rateParticipantEvent({Options? options, RateParticipantRequest? rateParticipantRequest}) async {
    final response =
        await apiDelegate.rateParticipantEvent(options: options, rateParticipantRequest: rateParticipantRequest);

    if (response.statusCode == 204) {
      return;
    }

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }
  }

  Future<String> generateParticipantEventQR(
      {Options? options, GenerateParticipantEventQRRequest? generateParticipantEventQRRequest}) async {
    final response = await apiDelegate.generateParticipantEventQR(
        options: options, generateParticipantEventQRRequest: generateParticipantEventQRRequest);

    if (![200, 400].contains(response.statusCode)) {
      throw ApiException(500, 'Invalid response code ${response.statusCode} returned from API');
    }

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.generateParticipantEventQR_decode(__body);
  }

  Future<String> validateParticipantEventQR(
      {Options? options, ValidateParticipantEventQRRequest? validateParticipantEventQRRequest}) async {
    final response = await apiDelegate.validateParticipantEventQR(
        options: options, validateParticipantEventQRRequest: validateParticipantEventQRRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    if (__body == null) {
      throw ApiException(500, 'Received an empty body (not in a 204)');
    }

    return await apiDelegate.validateParticipantEventQR_decode(__body);
  }

  /// Search for profile events by id
  Future<List<ProfileEvent>> searchProfileEventsByProfileId(String profileId, {Options? options}) async {
    final response = await apiDelegate.searchProfileEventsByProfileId(
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

    return await apiDelegate.searchProfileEventsByProfileId_decode(__body);
  }

  /// Update Event
  Future<void> updateEventById(String eventId,
      {Options? options, UpdateEventByIdRequest? updateEventByIdRequest}) async {
    final response =
        await apiDelegate.updateEventById(eventId, options: options, updateEventByIdRequest: updateEventByIdRequest);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  /// Upload Picture Event
  Future<void> uploadPictureEvent(String? eventId, String? profileId, Uint8List picture, {Options? options}) async {
    final response =
        await apiDelegate.uploadPictureEvent(options: options, event: eventId, profile: profileId, picture: picture);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

    return;
  }

  Future<void> eventCheckIn({Options? options, EventCheckIn? eventCheckIn}) async {
    final response = await apiDelegate.eventCheckIn(options: options, eventCheckIn: eventCheckIn);

    final __body = response.body;
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, __body == null ? null : await decodeBodyBytes(__body));
    }

  }
}

class EventApiDelegate {
  final ApiClient apiClient;

  EventApiDelegate(this.apiClient);

  Future<ApiResponse> createEvent({Options? options, CreateEventRequest? createEventRequest}) async {
    Object? postBody = createEventRequest;

    // create path and map variables
    final __path = '/event';

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

  Future<void> createEvent_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> cancelEventByEventId({Options? options, CancelEventRequest? cancelEventRequest}) async {
    Object? postBody = cancelEventRequest;

    // create path and map variables
    final __path = '/event/cancel';

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

  Future<void> cancelEventByEventId_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> exitEventByEventAndProfileId(String eventId, String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/event/{eventId}/{profileId}'
        .replaceAll('{' + 'eventId' + '}', LocalApiClient.parameterToString(eventId)!)
        .replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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
    opt.method = 'DELETE';

    return await apiClient.invokeAPI(__path, queryParams, null, authNames, opt);
  }

  Future<void> exitEventByEventAndProfileId_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> getEventById(String eventId, String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/event/{eventId}/{profileId}'
        .replaceAll('{' + 'eventId' + '}', LocalApiClient.parameterToString(eventId)!)
        .replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<Event> getEventById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Event') as Event;
  }

  Future<ApiResponse> getEventParticipantsByEventId(String eventId, String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/event/{eventId}/participants/{profileId}'
        .replaceAll('{' + 'eventId' + '}', LocalApiClient.parameterToString(eventId)!)
        .replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<EventParticipant>> getEventParticipantsByEventId_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<EventParticipant>') as List)
        .map((item) => item as EventParticipant)
        .toList();
  }

  Future<ApiResponse> getLastProfileEventsByProfileId(String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/event/profile/{profileId}/last'
        .replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ProfileEvent>> getLastProfileEventsByProfileId_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ProfileEvent>') as List)
        .map((item) => item as ProfileEvent)
        .toList();
  }

  Future<ApiResponse> getProfileEventsById(String profileId, {Options? options}) async {
    // create path and map variables
    final __path =
        '/event/profile/{profileId}'.replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ProfileEvent>> getProfileEventsById_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ProfileEvent>') as List)
        .map((item) => item as ProfileEvent)
        .toList();
  }

  Future<ApiResponse> getProfileOtherEventsByProfileId(String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/event/profile/{profileId}/other'
        .replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ProfileEvent>> getProfileOtherEventsByProfileId_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ProfileEvent>') as List)
        .map((item) => item as ProfileEvent)
        .toList();
  }

  Future<ApiResponse> requestParticipantEvent({Options? options, EventParticipationRequest? request}) async {
    // create path and map variables
    final __path = '/event/participant/request';

    Object? postBody = request;

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
    opt.method = 'POST';

    postBody = postBody == null ? null : LocalApiClient.serialize(postBody);

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> requestParticipantEvent_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> updateParticipantEvent(
      {Options? options, UpdateParticipantRequest? updateParticipantRequest}) async {
    Object? postBody = updateParticipantRequest;

    // create path and map variables
    final __path = '/event/participant/response';

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

  Future<void> updateParticipantEvent_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> rateParticipantEvent({Options? options, RateParticipantRequest? rateParticipantRequest}) async {
    Object? postBody = rateParticipantRequest;

    // create path and map variables
    final __path = '/event/participant/score';

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

  Future<void> rateParticipantEvent_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> generateParticipantEventQR(
      {Options? options, GenerateParticipantEventQRRequest? generateParticipantEventQRRequest}) async {
    Object? postBody = generateParticipantEventQRRequest;

    // create path and map variables
    final __path = '/event/participant/qr';

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

  Future<String> generateParticipantEventQR_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'String') as String;
  }

  Future<ApiResponse> validateParticipantEventQR(
      {Options? options, ValidateParticipantEventQRRequest? validateParticipantEventQRRequest}) async {
    Object? postBody = validateParticipantEventQRRequest;

    // create path and map variables
    final __path = '/event/participant/qr/validate';

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

  Future<String> validateParticipantEventQR_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'String') as String;
  }

  Future<ApiResponse> searchProfileEventsByProfileId(String profileId, {Options? options}) async {
    // create path and map variables
    final __path = '/event/profile/{profileId}/search'
        .replaceAll('{' + 'profileId' + '}', LocalApiClient.parameterToString(profileId)!);

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

  Future<List<ProfileEvent>> searchProfileEventsByProfileId_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ProfileEvent>') as List)
        .map((item) => item as ProfileEvent)
        .toList();
  }

  Future<ApiResponse> updateEventById(String eventId,
      {Options? options, UpdateEventByIdRequest? updateEventByIdRequest}) async {
    Object? postBody = updateEventByIdRequest;

    // create path and map variables
    final __path = '/event/{eventId}'.replaceAll('{' + 'eventId' + '}', LocalApiClient.parameterToString(eventId)!);

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

  Future<void> updateEventById_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> uploadPictureEvent({Options? options, String? event, String? profile, Uint8List? picture}) async {
    // create path and map variables
    final __path = '/event/upload';

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
      'event': LocalApiClient.parameterToString(event),
      'profile': LocalApiClient.parameterToString(profile),
      'picture': MultipartFile.fromBytes(picture!, filename: "image.jpg"),
    }.entries.where((m) => m.value != null)));

    headerParams.removeWhere((key, value) => value.isEmpty); // remove empty headers
    opt.headers = headerParams;
    opt.method = 'POST';

    return await apiClient.invokeAPI(__path, queryParams, postBody, authNames, opt);
  }

  Future<void> uploadPictureEvent_decode(Stream<List<int>> body) async {}

  Future<ApiResponse> eventCheckIn({Options? options, EventCheckIn? eventCheckIn}) async {
    Object? postBody = eventCheckIn;

    // create path and map variables
    final __path = '/event/check-in';

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

  Future<void> eventCheckIn_decode(Stream<List<int>> body) async {}
}
