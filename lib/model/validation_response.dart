part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ValidationResponse
class ValidationResponse {
  bool? validate;

  ValidationResponse({
    this.validate,
  });

  @override
  String toString() {
    return 'ValidationResponse[validate=$validate, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    validate = (json[r'validate'] == null) ? null : (json[r'validate'] as bool?);
  }

  ValidationResponse.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (validate != null) {
      json[r'validate'] = validate;
    }
    return json;
  }

  static List<ValidationResponse> listFromJson(List<dynamic>? json) {
    return json == null ? <ValidationResponse>[] : json.map((value) => ValidationResponse.fromJson(value)).toList();
  }

  static Map<String, ValidationResponse> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ValidationResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidationResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ValidationResponse && runtimeType == __other.runtimeType) {
      return validate == __other.validate;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (validate != null) {
      hashCode = hashCode * 31 + validate.hashCode;
    }

    return hashCode;
  }

  ValidationResponse copyWith({
    bool? validate,
  }) {
    validate ??= this.validate;

    final _copy_validate = validate;

    return ValidationResponse(
      validate: _copy_validate,
    );
  }
}
