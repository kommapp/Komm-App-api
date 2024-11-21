part of komm.api;

/*
* - estados de la relación (0 - pendiente, 1 - aceptado, 2 - rechazado)
* */

// Relation
class Relation {
  String? id;
  String? profile;
  String? initProfile;
  String? name;
  String? phrase;
  String? picture;
  int? status;
  bool? requested;
  String? createdAt;

  Relation({
    this.id,
    this.profile,
    this.initProfile,
    this.name,
    this.phrase,
    this.picture,
    this.status,
    this.requested,
    this.createdAt,
  });

  @override
  String toString() {
    return 'Relation[id=$id, profile=$profile, initProfile=$initProfile name=$name, phrase=$phrase, picture=$picture, status=$status, requested=$requested, createdAt=$createdAt]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    profile = (json[r'profile'] == null) ? null : (json[r'profile'] as String?);
    initProfile = (json[r'initProfile'] == null) ? null : (json[r'initProfile'] as String?);
    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);
    phrase = (json[r'phrase'] == null) ? null : (json[r'phrase'] as String?);
    picture = (json[r'picture'] == null) ? null : (json[r'picture'] as String?);
    status = (json[r'status'] == null) ? null : (json[r'status'] as int?);
    requested = (json[r'requested'] == null) ? null : (json[r'requested'] as bool?);
    createdAt = (json[r'createdAt'] == null) ? null : (json[r'createdAt'] as String?);
  }

  Relation.fromJson(Map<String, dynamic>? json) {
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
    if (initProfile != null) {
      json[r'initProfile'] = initProfile;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (phrase != null) {
      json[r'phrase'] = phrase;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (requested != null) {
      json[r'requested'] = requested;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt;
    }

    return json;
  }

  static List<Relation> listFromJson(List<dynamic>? json) {
    return json == null ? <Relation>[] : json.map((value) => Relation.fromJson(value)).toList();
  }

  static Map<String, Relation> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, Relation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Relation.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is Relation && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          profile == __other.profile &&
          initProfile == __other.initProfile &&
          name == __other.name &&
          phrase == __other.phrase &&
          picture == __other.picture &&
          status == __other.status &&
          requested == __other.requested &&
          createdAt == __other.createdAt;
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
    if (initProfile != null) {
      hashCode = hashCode * 31 + initProfile.hashCode;
    }
    if (name != null) {
      hashCode = hashCode * 31 + name.hashCode;
    }
    if (phrase != null) {
      hashCode = hashCode * 31 + phrase.hashCode;
    }
    if (picture != null) {
      hashCode = hashCode * 31 + picture.hashCode;
    }
    if (status != null) {
      hashCode = hashCode * 31 + status.hashCode;
    }
    if (requested != null) {
      hashCode = hashCode * 31 + requested.hashCode;
    }
    if (createdAt != null) {
      hashCode = hashCode * 31 + createdAt.hashCode;
    }

    return hashCode;
  }

  Relation copyWith({
    String? id,
    String? profile,
    String? initProfile,
    String? name,
    String? phrase,
    String? picture,
    int? status,
    bool? requested,
    String? createdAt,
  }) {
    id ??= this.id;
    profile ??= this.profile;
    initProfile ??= this.initProfile;
    name ??= this.name;
    phrase ??= this.phrase;
    picture ??= this.picture;
    status ??= this.status;
    requested ??= this.requested;
    createdAt ??= this.createdAt;

    final _copy_id = id;
    final _copy_profile = profile;
    final _copy_initProfile = initProfile;
    final _copy_name = name;
    final _copy_phrase = phrase;
    final _copy_picture = picture;
    final _copy_status = status;
    final _copy_requested = requested;
    final _copy_createdAt = createdAt;

    return Relation(
      id: _copy_id,
      profile: _copy_profile,
      initProfile: _copy_initProfile,
      name: _copy_name,
      phrase: _copy_phrase,
      picture: _copy_picture,
      status: _copy_status,
      requested: _copy_requested,
      createdAt: _copy_createdAt,
    );
  }
}
