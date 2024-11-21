part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

class StaticDataApi {
  final StaticDataApiDelegate apiDelegate;

  StaticDataApi(ApiClient apiClient) : apiDelegate = StaticDataApiDelegate(apiClient);

  Future<Complexion> getComplexionById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getComplexionById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getComplexionById_decode(__body);
  }

  Future<List<Complexion>> getComplexionList({Options? options, String? locale}) async {
    final response = await apiDelegate.getComplexionList(options: options, locale: locale);

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

    return await apiDelegate.getComplexionList_decode(__body);
  }

  Future<Country> getCountryById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getCountryById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getCountryById_decode(__body);
  }

  Future<List<Country>> getCountryList({Options? options, String? locale}) async {
    final response = await apiDelegate.getCountryList(options: options, locale: locale);

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

    return await apiDelegate.getCountryList_decode(__body);
  }

  Future<Education> getEducationById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getEducationById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getEducationById_decode(__body);
  }

  Future<List<Education>> getEducationList({Options? options, String? locale}) async {
    final response = await apiDelegate.getEducationList(options: options, locale: locale);

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

    return await apiDelegate.getEducationList_decode(__body);
  }

  Future<Gender> getGenderById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getGenderById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getGenderById_decode(__body);
  }

  Future<List<Gender>> getGenderList({Options? options, String? locale}) async {
    final response = await apiDelegate.getGenderList(options: options, locale: locale);

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

    return await apiDelegate.getGenderList_decode(__body);
  }

  Future<Hobby> getHobbyById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getHobbyById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getHobbyById_decode(__body);
  }

  Future<HobbyCategory> getHobbyCategoryById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getHobbyCategoryById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getHobbyCategoryById_decode(__body);
  }

  Future<List<HobbyCategory>> getHobbyCategoryList({Options? options, String? locale}) async {
    final response = await apiDelegate.getHobbyCategoryList(options: options, locale: locale);

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

    return await apiDelegate.getHobbyCategoryList_decode(__body);
  }

  Future<List<Hobby>> getHobbyList({Options? options, String? locale}) async {
    final response = await apiDelegate.getHobbyList(options: options, locale: locale);

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

    return await apiDelegate.getHobbyList_decode(__body);
  }

  Future<Language> getLanguageById(String id, String locale, {Options? options}) async {
    final response = await apiDelegate.getLanguageById(
      id,
      locale,
      options: options,
    );

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

    return await apiDelegate.getLanguageById_decode(__body);
  }

  Future<List<Language>> getLanguageList({Options? options, String? locale}) async {
    final response = await apiDelegate.getLanguageList(options: options, locale: locale);

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

    return await apiDelegate.getLanguageList_decode(__body);
  }

  Future<List<ComplaintType>> getComplaintTypeList(String locale, {Options? options}) async {
    final response = await apiDelegate.getComplaintTypeList(
      locale,
      options: options,
    );

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

    return await apiDelegate.getComplaintTypeList_decode(__body);
  }
}

class StaticDataApiDelegate {
  final ApiClient apiClient;

  StaticDataApiDelegate(this.apiClient);

  Future<ApiResponse> getComplexionById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/complexion/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<Complexion> getComplexionById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Complexion') as Complexion;
  }

  Future<ApiResponse> getComplexionList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/complexion';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<Complexion>> getComplexionList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Complexion>') as List)
        .map((item) => item as Complexion)
        .toList();
  }

  Future<ApiResponse> getCountryById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/country/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<Country> getCountryById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Country') as Country;
  }

  Future<ApiResponse> getCountryList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/country';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<Country>> getCountryList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Country>') as List)
        .map((item) => item as Country)
        .toList();
  }

  Future<ApiResponse> getEducationById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/education/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<Education> getEducationById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Education') as Education;
  }

  Future<ApiResponse> getEducationList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/education';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<Education>> getEducationList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Education>') as List)
        .map((item) => item as Education)
        .toList();
  }

  Future<ApiResponse> getGenderById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/gender/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<Gender> getGenderById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Gender') as Gender;
  }

  Future<ApiResponse> getGenderList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/gender';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<Gender>> getGenderList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Gender>') as List)
        .map((item) => item as Gender)
        .toList();
  }

  Future<ApiResponse> getHobbyById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/hobby/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<Hobby> getHobbyById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Hobby') as Hobby;
  }

  Future<ApiResponse> getHobbyCategoryById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/hobby/category/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<HobbyCategory> getHobbyCategoryById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'HobbyCategory') as HobbyCategory;
  }

  Future<ApiResponse> getHobbyCategoryList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/hobby/category';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<HobbyCategory>> getHobbyCategoryList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<HobbyCategory>') as List)
        .map((item) => item as HobbyCategory)
        .toList();
  }

  Future<ApiResponse> getHobbyList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/hobby';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<Hobby>> getHobbyList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Hobby>') as List)
        .map((item) => item as Hobby)
        .toList();
  }

  Future<ApiResponse> getLanguageById(String id, String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/language/{id}'.replaceAll('{' + 'id' + '}', LocalApiClient.parameterToString(id)!);

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<Language> getLanguageById_decode(Stream<List<int>> body) async {
    return LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'Language') as Language;
  }

  Future<ApiResponse> getLanguageList({Options? options, String? locale}) async {
    // create path and map variables
    final __path = '/language';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    if (locale != null) {
      queryParams.addAll(
          convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));
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

  Future<List<Language>> getLanguageList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<Language>') as List)
        .map((item) => item as Language)
        .toList();
  }

  Future<ApiResponse> getComplaintTypeList(String locale, {Options? options}) async {
    // create path and map variables
    final __path = '/complaint_type';

    // query params
    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{}..addAll(options?.headers?.cast<String, String>() ?? {});
    if (!headerParams.containsKey('Accept')) {
      // we only want to accept this format as we can parse it
      headerParams['Accept'] = 'application/json';
    }

    queryParams.addAll(
        convertParametersForCollectionFormat((p) => LocalApiClient.parameterToString(p)!, '', 'locale', locale));

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

  Future<List<ComplaintType>> getComplaintTypeList_decode(Stream<List<int>> body) async {
    return (LocalApiClient.deserializeFromString(await utf8.decodeStream(body), 'List<ComplaintType>') as List)
        .map((item) => item as ComplaintType)
        .toList();
  }
}
