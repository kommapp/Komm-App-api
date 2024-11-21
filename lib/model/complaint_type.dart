part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ComplaintType
class ComplaintType {
  String? id;
  String? section;
  String? name;

  ComplaintType({
    this.id,
    this.section,
    this.name,
  });

  @override
  String toString() {
    return 'ComplaintType[id=$id, section=$section, name=$name, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);

    section = (json[r'section'] == null) ? null : (json[r'section'] as String?);

    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);
  }

  ComplaintType.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (section != null) {
      json[r'section'] = section;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  static List<ComplaintType> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ComplaintType>[]
        : json.map((value) => ComplaintType.fromJson(value)).toList();
  }

  static Map<String, ComplaintType> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ComplaintType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ComplaintType.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ComplaintType && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          section == __other.section &&
          name == __other.name;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (section != null) {
      hashCode = hashCode * 31 + section.hashCode;
    }

    if (name != null) {
      hashCode = hashCode * 31 + name.hashCode;
    }

    return hashCode;
  }

  ComplaintType copyWith({
    String? id,
    String? section,
    String? name,
  }) {
    id ??= this.id;
    section ??= this.section;
    name ??= this.name;

    final _copy_id = id;
    final _copy_section = section;
    final _copy_name = name;

    return ComplaintType(
      id: _copy_id,
      section: _copy_section,
      name: _copy_name,
    );
  }
}