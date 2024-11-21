part of komm.api;

// Gift
class Gift {
  String? id;

  String? name;

  String? picture;

  Gift({
    this.id,
    this.name,
    this.picture,
  });

  @override
  String toString() {
    return 'Gift[id=$id, name=$name, picture=$picture, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);

    picture = (json[r'picture'] == null) ? null : (json[r'picture'] as String?);
  }

  Gift.fromJson(Map<String, dynamic>? json) {
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
    if (picture != null) {
      json[r'picture'] = picture;
    }
    return json;
  }

  static List<Gift> listFromJson(List<dynamic>? json) {
    return json == null
        ? <Gift>[]
        : json.map((value) => Gift.fromJson(value)).toList();
  }

  static Map<String, Gift> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, Gift>{};
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Gift.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is Gift && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          name == __other.name &&
          picture == __other.picture;
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

    if (picture != null) {
      hashCode = hashCode * 31 + picture.hashCode;
    }

    return hashCode;
  }

  Gift copyWith({
    String? id,
    String? name,
    String? picture,
  }) {
    id ??= this.id;
    name ??= this.name;
    picture ??= this.picture;

    final _copy_id = id;
    final _copy_name = name;
    final _copy_picture = picture;

    return Gift(
      id: _copy_id,
      name: _copy_name,
      picture: _copy_picture,
    );
  }
}
