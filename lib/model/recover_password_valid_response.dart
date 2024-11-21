part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// RecoverPasswordValidResponse
class RecoverPasswordValidResponse {
  String? userId;

  RecoverPasswordValidResponse({
    this.userId,
  });

  @override
  String toString() {
    return 'RecoverPasswordValidResponse[userId=$userId, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    userId = (json[r'user_id'] == null) ? null : (json[r'user_id'] as String?);
  }

  RecoverPasswordValidResponse.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userId != null) {
      json[r'user_id'] = userId;
    }
    return json;
  }

  static List<RecoverPasswordValidResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <RecoverPasswordValidResponse>[]
        : json
            .map((value) => RecoverPasswordValidResponse.fromJson(value))
            .toList();
  }

  static Map<String, RecoverPasswordValidResponse> mapFromJson(
      Map<String, dynamic>? json) {
    final map = <String, RecoverPasswordValidResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = RecoverPasswordValidResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is RecoverPasswordValidResponse &&
        runtimeType == __other.runtimeType) {
      return userId == __other.userId;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (userId != null) {
      hashCode = hashCode * 31 + userId.hashCode;
    }

    return hashCode;
  }

  RecoverPasswordValidResponse copyWith({
    String? userId,
  }) {
    userId ??= this.userId;

    final _copy_userId = userId;

    return RecoverPasswordValidResponse(
      userId: _copy_userId,
    );
  }
}
