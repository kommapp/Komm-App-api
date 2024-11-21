part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// HobbyCategory
class HobbyCategory {
  /* Identifier of the object */
  String? id;

  String? name;

  String? description;

  String? icon;

  HobbyCategory({
    this.id,
    this.name,
    this.description,
    this.icon,
  });

  @override
  String toString() {
    return 'HobbyCategory[id=$id, name=$name, description=$description, icon=$icon,  ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);

    description = (json[r'description'] == null)
        ? null
        : (json[r'description'] as String?);

    icon = (json[r'icon'] == null) ? null : (json[r'icon'] as String?);
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
    if (icon != null) {
      json[r'icon'] = icon;
    }
    return json;
  }

  static List<HobbyCategory> listFromJson(List<dynamic>? json) {
    return json == null
        ? <HobbyCategory>[]
        : json.map((value) => HobbyCategory.fromJson(value)).toList();
  }

  static Map<String, HobbyCategory> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, HobbyCategory>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = HobbyCategory.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is HobbyCategory && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          name == __other.name &&
          description == __other.description &&
          icon == __other.icon;
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

    if (icon != null) {
      hashCode = hashCode * 31 + icon.hashCode;
    }

    return hashCode;
  }

  HobbyCategory copyWith({
    String? id,
    String? name,
    String? description,
    String? icon,
  }) {
    id ??= this.id;
    name ??= this.name;
    description ??= this.description;
    icon ??= this.icon;

    final _copy_id = id;
    final _copy_name = name;
    final _copy_description = description;
    final _copy_icon = icon;

    return HobbyCategory(
      id: _copy_id,
      name: _copy_name,
      description: _copy_description,
      icon: _copy_icon,
    );
  }
}
