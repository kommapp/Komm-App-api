part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ValidateParticipantEventQRResponse
class ValidateParticipantEventQRResponse {
  String? message;

  ValidateParticipantEventQRResponse({
    this.message,
  });

  @override
  String toString() {
    return 'ValidateParticipantEventQRResponse[message=$message, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    message = (json[r'message'] == null) ? null : (json[r'message'] as String?);
  }

  ValidateParticipantEventQRResponse.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  static List<ValidateParticipantEventQRResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ValidateParticipantEventQRResponse>[]
        : json.map((value) => ValidateParticipantEventQRResponse.fromJson(value)).toList();
  }

  static Map<String, ValidateParticipantEventQRResponse> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ValidateParticipantEventQRResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidateParticipantEventQRResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ValidateParticipantEventQRResponse && runtimeType == __other.runtimeType) {
      return message == __other.message;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (message != null) {
      hashCode = hashCode * 31 + message.hashCode;
    }

    return hashCode;
  }

  ValidateParticipantEventQRResponse copyWith({
    String? message,
  }) {
    message ??= this.message;

    final _copy_message = message;

    return ValidateParticipantEventQRResponse(
      message: _copy_message,
    );
  }
}
