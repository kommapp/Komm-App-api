part of komm.api;

// Hobby
class Hobby {
  String? id;
  String? category;
  String? name;
  String? description;
  String? icon;
  bool? active;

  Hobby({
    this.id,
    this.category,
    this.name,
    this.description,
    this.icon,
    this.active,
  });

  @override
  String toString() {
    return 'Hobby[id=$id, category=$category, name=$name, description=$description, icon=$icon, active=$active, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id          = (json[r'id']          == null) ? null: (json[r'id'] as String?);
    category    = (json[r'category']    == null) ? null: (json[r'category'] as String?);
    name        = (json[r'name']        == null) ? null: (json[r'name'] as String?);
    description = (json[r'description'] == null) ? null: (json[r'description'] as String?);
    icon        = (json[r'icon']        == null) ? null: (json[r'icon'] as String?);
    active      = (json[r'active']      == null) ? null: (json[r'active'] == 1);
  }

  Hobby.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (category != null) {
      json[r'category'] = category;
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
    if (active != null) {
      json[r'active'] = active;
    }
    return json;
  }

  static List<Hobby> listFromJson(List<dynamic>? json) {
    return json == null ? <Hobby>[] : json.map((value) => Hobby.fromJson(value)).toList();
  }

  static Map<String, Hobby> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, Hobby>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Hobby.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is Hobby && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          category == __other.category &&
          name == __other.name &&
          description == __other.description &&
          icon == __other.icon &&
          active == __other.active;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (category != null) {
      hashCode = hashCode * 31 + category.hashCode;
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

    if (active != null) {
      hashCode = hashCode * 31 + active.hashCode;
    }

    return hashCode;
  }

  Hobby copyWith({
    String? id,
    String? category,
    String? name,
    String? description,
    String? icon,
    bool? active,
  }) {
    id ??= this.id;
    category ??= this.category;
    name ??= this.name;
    description ??= this.description;
    icon ??= this.icon;
    active ??= this.active;

    final _copy_id = id;
    final _copy_category = category;
    final _copy_name = name;
    final _copy_description = description;
    final _copy_icon = icon;
    final _copy_active = active;

    return Hobby(
      id: _copy_id,
      category: _copy_category,
      name: _copy_name,
      description: _copy_description,
      icon: _copy_icon,
      active: _copy_active,
    );
  }
}
