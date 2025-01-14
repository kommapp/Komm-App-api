part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// EventParticipationRequest
class EventParticipationRequest {
  String? id;

  String? profile;

  EventParticipationRequest({
    this.id,
    this.profile,
  });

  @override
  String toString() {
    return 'EventParticipationRequest[id=$id, profile=$profile, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    profile = (json[r'profile'] == null) ? null : (json[r'profile'] as String?);
  }

  EventParticipationRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (profile != null) {
      json[r'profile'] = profile;
    }
    return json;
  }

  static List<EventParticipationRequest> listFromJson(List<dynamic>? json) {
    return json == null
        ? <EventParticipationRequest>[]
        : json.map((value) => EventParticipationRequest.fromJson(value)).toList();
  }

  static Map<String, EventParticipationRequest> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, EventParticipationRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventParticipationRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is EventParticipationRequest && runtimeType == __other.runtimeType) {
      return id == __other.id && profile == __other.profile;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (profile != null) {
      hashCode = hashCode * 31 + profile.hashCode;
    }

    return hashCode;
  }

  EventParticipationRequest copyWith({
    String? id,
    String? profile,
  }) {
    id ??= this.id;
    profile ??= this.profile;

    final _copy_id = id;
    final _copy_profile = profile;

    return EventParticipationRequest(
      id: _copy_id,
      profile: _copy_profile,
    );
  }
}
