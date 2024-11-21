part of komm.api;

// Hobby
class Hobby {
  String? id;
  String? categoryId;
  String? name;
  String? description;
  String? icon;

  Hobby({
    this.id,
    this.categoryId,
    this.name,
    this.description,
    this.icon,
  });

  @override
  String toString() {
    return 'Hobby[id=$id, categoryId=$categoryId, name=$name, description=$description, icon=$icon, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    categoryId =
        (json[r'categoryId'] == null) ? null : (json[r'categoryId'] as String?);
    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);
    description = (json[r'description'] == null)
        ? null
        : (json[r'description'] as String?);
    icon = (json[r'icon'] == null) ? null : (json[r'icon'] as String?);
  }

  Hobby.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (categoryId != null) {
      json[r'categoryId'] = categoryId;
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

  static List<Hobby> listFromJson(List<dynamic>? json) {
    return json == null
        ? <Hobby>[]
        : json.map((value) => Hobby.fromJson(value)).toList();
  }

  static Map<String, Hobby> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, Hobby>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Hobby.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is Hobby && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          categoryId == __other.categoryId &&
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

    if (categoryId != null) {
      hashCode = hashCode * 31 + categoryId.hashCode;
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

  Hobby copyWith({
    String? id,
    String? categoryId,
    String? name,
    String? description,
    String? icon,
  }) {
    id ??= this.id;
    categoryId ??= this.categoryId;
    name ??= this.name;
    description ??= this.description;
    icon ??= this.icon;

    final _copy_id = id;
    final _copy_categoryId = categoryId;
    final _copy_name = name;
    final _copy_description = description;
    final _copy_icon = icon;

    return Hobby(
      id: _copy_id,
      categoryId: _copy_categoryId,
      name: _copy_name,
      description: _copy_description,
      icon: _copy_icon,
    );
  }
}
