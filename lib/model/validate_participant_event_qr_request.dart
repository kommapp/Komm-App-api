part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ValidateParticipantEventQRRequest
class ValidateParticipantEventQRRequest {
  String? code;
  String? profile;
  String? event;

  ValidateParticipantEventQRRequest({
    this.code,
    this.profile,
    this.event
  });

  @override
  String toString() {
    return 'ValidateParticipantEventQRRequest[code=$code, profile=$profile, event=$event]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    code    = (json[r'code'] == null) ? null : (json[r'code'] as String?);
    profile = (json[r'profile'] == null) ? null : (json[r'profile'] as String?);
    event   = (json[r'event'] == null) ? null : (json[r'event'] as String?);
  }

  ValidateParticipantEventQRRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (profile != null) {
      json[r'profile'] = profile;
    }
    if (event != null) {
      json[r'event'] = event;
    }

    return json;
  }

  static List<ValidateParticipantEventQRRequest> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ValidateParticipantEventQRRequest>[]
        : json.map((value) => ValidateParticipantEventQRRequest.fromJson(value)).toList();
  }

  static Map<String, ValidateParticipantEventQRRequest> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ValidateParticipantEventQRRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidateParticipantEventQRRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ValidateParticipantEventQRRequest && runtimeType == __other.runtimeType) {
      return code == __other.code && profile == __other.profile;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (code != null) {
      hashCode = hashCode * 31 + code.hashCode;
    }

    if (profile != null) {
      hashCode = hashCode * 31 + profile.hashCode;
    }

    if (event != null) {
      hashCode = hashCode * 31 + event.hashCode;
    }

    return hashCode;
  }

  ValidateParticipantEventQRRequest copyWith({
    String? code,
    String? profile,
    String? event
  }) {
    code ??= this.code;
    profile ??= this.profile;
    event ??= this.event;

    final _copy_code = code;
    final _copy_profile = profile;
    final _copy_event = event;

    return ValidateParticipantEventQRRequest(
      code   : _copy_code,
      profile: _copy_profile,
      event  : _copy_event
    );
  }
}
