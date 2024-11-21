part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// HobbyCategory
class HobbyCategory {
  /* Identifier of the object */
  String? id;

  String? name;

  String? description;

  String? picture;

  bool? active;

  HobbyCategory({
    this.id,
    this.name,
    this.description,
    this.picture,
    this.active,
  });

  @override
  String toString() {
    return 'HobbyCategory[id=$id, name=$name, description=$description, picture=$picture, active=$active, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);

    description = (json[r'description'] == null) ? null : (json[r'description'] as String?);

    picture = (json[r'picture'] == null) ? null : (json[r'picture'] as String?);

    active = (json[r'active'] == null) ? null : (json[r'active'] == 1);
  }

  HobbyCategory.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (active != null) {
      json[r'active'] = active;
    }
    return json;
  }

  static List<HobbyCategory> listFromJson(List<dynamic>? json) {
    return json == null ? <HobbyCategory>[] : json.map((value) => HobbyCategory.fromJson(value)).toList();
  }

  static Map<String, HobbyCategory> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, HobbyCategory>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HobbyCategory.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is HobbyCategory && runtimeType == __other.runtimeType) {
      return id == __other.id && name == __other.name && description == __other.description && picture == __other.picture && active == __other.active;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (name != null) {
      hashCode = hashCode * 31 + name.hashCode;
    }

    if (description != null) {
      hashCode = hashCode * 31 + description.hashCode;
    }

    if (picture != null) {
      hashCode = hashCode * 31 + picture.hashCode;
    }

    if (active != null) {
      hashCode = hashCode * 31 + active.hashCode;
    }

    return hashCode;
  }

  HobbyCategory copyWith({
    String? id,
    String? name,
    String? description,
    String? picture,
    bool? active,
  }) {
    id ??= this.id;
    name ??= this.name;
    description ??= this.description;
    picture ??= this.picture;
    active ??= this.active;

    final _copy_id = id;
    final _copy_name = name;
    final _copy_description = description;
    final _copy_picture = picture;
    final _copy_active = active;

    return HobbyCategory(
      id: _copy_id,
      name: _copy_name,
      description: _copy_description,
      picture: _copy_picture,
      active: _copy_active,
    );
  }
}