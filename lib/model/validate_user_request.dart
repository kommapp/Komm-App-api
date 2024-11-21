part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// validateUser_request
class ValidateUserRequest {
  String? id;

  String? code;

  ValidateUserRequest({
    this.id,
    this.code,
  });

  @override
  String toString() {
    return 'ValidateUserRequest[id=$id, code=$code, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    code = (json[r'code'] == null) ? null : (json[r'code'] as String?);
  }

  ValidateUserRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    return json;
  }

  static List<ValidateUserRequest> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ValidateUserRequest>[]
        : json.map((value) => ValidateUserRequest.fromJson(value)).toList();
  }

  static Map<String, ValidateUserRequest> mapFromJson(
      Map<String, dynamic>? json) {
    final map = <String, ValidateUserRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ValidateUserRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ValidateUserRequest && runtimeType == __other.runtimeType) {
      return id == __other.id && code == __other.code;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (code != null) {
      hashCode = hashCode * 31 + code.hashCode;
    }

    return hashCode;
  }

  ValidateUserRequest copyWith({
    String? id,
    String? code,
  }) {
    id ??= this.id;
    code ??= this.code;

    final _copy_id = id;
    final _copy_code = code;

    return ValidateUserRequest(
      id: _copy_id,
      code: _copy_code,
    );
  }
}
