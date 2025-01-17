part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ProfilePicture
class ProfilePicture {
  /* Identifier of the object */
  String? id;

  /* Url of the picture */
  String? url;

  /* True if is the main profile photo */
  bool? main = false;

  ProfilePicture({
    this.id,
    this.url,
    this.main,
  });

  @override
  String toString() {
    return 'ProfilePicture[id=$id, url=$url, main=$main, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    url = (json[r'url'] == null) ? null : (json[r'url'] as String?);

    main = (json[r'main'] == null) ? null : (json[r'main'] == 1);
  }

  ProfilePicture.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    if (main != null) {
      json[r'main'] = main;
    }
    return json;
  }

  static List<ProfilePicture> listFromJson(List<dynamic>? json) {
    return json == null ? <ProfilePicture>[] : json.map((value) => ProfilePicture.fromJson(value)).toList();
  }

  static Map<String, ProfilePicture> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ProfilePicture>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProfilePicture.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ProfilePicture && runtimeType == __other.runtimeType) {
      return id == __other.id && url == __other.url && main == __other.main;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (url != null) {
      hashCode = hashCode * 31 + url.hashCode;
    }

    if (main != null) {
      hashCode = hashCode * 31 + main.hashCode;
    }

    return hashCode;
  }

  ProfilePicture copyWith({
    String? id,
    String? url,
    bool? main,
  }) {
    id ??= this.id;
    url ??= this.url;
    main ??= this.main;

    final _copy_id = id;
    final _copy_url = url;
    final _copy_main = main;

    return ProfilePicture(
      id: _copy_id,
      url: _copy_url,
      main: _copy_main,
    );
  }
}
