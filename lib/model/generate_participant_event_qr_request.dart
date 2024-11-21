part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// GenerateParticipantEventQRRequest
class GenerateParticipantEventQRRequest {
  String? id;

  GenerateParticipantEventQRRequest({
    this.id,
  });

  @override
  String toString() {
    return 'GenerateParticipantEventQRRequest[id=$id, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
  }

  GenerateParticipantEventQRRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  static List<GenerateParticipantEventQRRequest> listFromJson(List<dynamic>? json) {
    return json == null
        ? <GenerateParticipantEventQRRequest>[]
        : json.map((value) => GenerateParticipantEventQRRequest.fromJson(value)).toList();
  }

  static Map<String, GenerateParticipantEventQRRequest> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, GenerateParticipantEventQRRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GenerateParticipantEventQRRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is GenerateParticipantEventQRRequest && runtimeType == __other.runtimeType) {
      return id == __other.id;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    return hashCode;
  }

  GenerateParticipantEventQRRequest copyWith({
    String? id,
  }) {
    id ??= this.id;

    final _copy_id = id;

    return GenerateParticipantEventQRRequest(
      id: _copy_id,
    );
  }
}