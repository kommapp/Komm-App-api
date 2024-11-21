part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// AuthResponse
class AuthResponse {
  String? code;

  AuthResponse({
    this.code,
  });

  @override
  String toString() {
    return 'AuthResponse[code=$code, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    code = (json[r'code'] == null) ? null : (json[r'code'] as String?);
  }

  AuthResponse.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  static List<AuthResponse> listFromJson(List<dynamic>? json) {
    return json == null ? <AuthResponse>[] : json.map((value) => AuthResponse.fromJson(value)).toList();
  }

  static Map<String, AuthResponse> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, AuthResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AuthResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is AuthResponse && runtimeType == __other.runtimeType) {
      return code == __other.code;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (code != null) {
      hashCode = hashCode * 31 + code.hashCode;
    }

    return hashCode;
  }

  AuthResponse copyWith({
    String? code,
  }) {
    code ??= this.code;

    final _copy_code = code;

    return AuthResponse(
      code: _copy_code,
    );
  }
}