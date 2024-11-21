part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// UploadPictureEvent_request
class UploadPictureEventRequest {

  String? event;
  String? profile;
  String? picture;

  UploadPictureEventRequest({ this.event,
    this.profile,
    this.picture,
  });

  @override
  String toString() {
    return 'UploadPictureEventRequest[event=$event, profile=$profile, picture=$picture, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    event = (json[r'event'] == null) ? null : (json[r'event'] as String?);
    profile = (json[r'profile'] == null) ? null : (json[r'profile'] as String?);
    picture = (json[r'picture'] == null) ? null : (json[r'picture'] as String?);
  }

  UploadPictureEventRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (event != null) {
      json[r'event'] = event;
    }
    if (profile != null) {
      json[r'profile'] = profile;
    }
    if (picture != null) {}
    return json;
  }

  static List<UploadPictureEventRequest> listFromJson(List<dynamic>? json) {
    return json == null ? <UploadPictureEventRequest>[] : json.map((value) => UploadPictureEventRequest.fromJson(value))
        .toList();
  }

  static Map<String, UploadPictureEventRequest> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, UploadPictureEventRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UploadPictureEventRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is UploadPictureEventRequest && runtimeType == __other.runtimeType) {
      return

        event == __other.event &&


            profile == __other.profile &&

            picture == __other.picture
      ;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;


    if (event != null) {
      hashCode = hashCode * 31 + event.hashCode;
    }


    if (profile != null) {
      hashCode = hashCode * 31 + profile.hashCode;
    }


    if (picture != null) {
      hashCode = hashCode * 31 + picture.hashCode;
    }


    return hashCode;
  }

  UploadPictureEventRequest copyWith({
    String? event,
    String? profile,
    String? picture,
  }) {
    event ??= this.event;
    profile ??= this.profile;
    picture ??= this.picture;

    final _copy_event = event;
    final _copy_profile = profile;
    final _copy_picture = picture;

    return UploadPictureEventRequest(
      event: _copy_event, profile: _copy_profile, picture: _copy_picture,);
  }
}


