part of komm.api;

// Giveaway
class Giveaway {
  String? id;
  String? name;
  String? endDate;
  List<Gift>? gifts = [];

  Giveaway({
    this.id,
    this.name,
    this.endDate,
    this.gifts,
  });

  @override
  String toString() {
    return 'Giveaway[id=$id, name=$name, endDate=$endDate, gifts=$gifts, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    name = (json[r'name'] == null) ? null : (json[r'name'] as String?);
    endDate = (json[r'end_date'] == null) ? null : (json[r'end_date'] as String?);

    {
      final _jsonData = json[r'gifts'];
      gifts = (_jsonData == null)
          ? []
          : ((dynamic data) {
              return Gift.listFromJson(data);
            }(_jsonData));
    } // _jsonFieldName
  }

  Giveaway.fromJson(Map<String, dynamic>? json) {
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
    if (endDate != null) {
      json[r'end_date'] = endDate;
    }
    if (gifts != null) {
      json[r'gifts'] = gifts?.map((v) => LocalApiClient.serialize(v)).toList();
    }
    return json;
  }

  static List<Giveaway> listFromJson(List<dynamic>? json) {
    return json == null ? <Giveaway>[] : json.map((value) => Giveaway.fromJson(value)).toList();
  }

  static Map<String, Giveaway> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, Giveaway>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Giveaway.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is Giveaway && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          name == __other.name &&
          endDate == __other.endDate &&
          const ListEquality().equals(gifts, __other.gifts);
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

    if (endDate != null) {
      hashCode = hashCode * 31 + endDate.hashCode;
    }

    if (gifts != null) {
      hashCode = hashCode * 31 + const ListEquality().hash(gifts);
    }

    return hashCode;
  }

  Giveaway copyWith({
    String? id,
    String? name,
    String? endDate,
    List<Gift>? gifts,
  }) {
    id ??= this.id;
    name ??= this.name;
    endDate ??= this.endDate;
    gifts ??= this.gifts;

    final _copy_id = id;
    final _copy_name = name;
    final _copy_endDate = endDate;
    final _copy_gifts = (gifts == null)
        ? [] as List<Gift>?
        : ((List<Gift>? data) {
            return data?.map((data) => data.copyWith()).toList();
          }(gifts));

    return Giveaway(
      id: _copy_id,
      name: _copy_name,
      endDate: _copy_endDate,
      gifts: _copy_gifts,
    );
  }
}
