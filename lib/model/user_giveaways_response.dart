part of komm.api;

// UserGiveawaysResponse
class UserGiveawaysResponse {
  int? score;

  int? level;

  UserGiveawaysResponse({
    this.score,
    this.level,
  });

  @override
  String toString() {
    return 'UserGiveawaysResponse[score=$score, level=$level, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    score = (json[r'score'] == null) ? null : (json[r'score'] as int?);

    level = (json[r'level'] == null) ? null : (json[r'level'] as int?);
  }

  UserGiveawaysResponse.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (score != null) {
      json[r'score'] = score;
    }
    if (level != null) {
      json[r'level'] = level;
    }
    return json;
  }

  static List<UserGiveawaysResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <UserGiveawaysResponse>[]
        : json.map((value) => UserGiveawaysResponse.fromJson(value)).toList();
  }

  static Map<String, UserGiveawaysResponse> mapFromJson(
      Map<String, dynamic>? json) {
    final map = <String, UserGiveawaysResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = UserGiveawaysResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is UserGiveawaysResponse &&
        runtimeType == __other.runtimeType) {
      return score == __other.score && level == __other.level;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (score != null) {
      hashCode = hashCode * 31 + score.hashCode;
    }

    if (level != null) {
      hashCode = hashCode * 31 + level.hashCode;
    }

    return hashCode;
  }

  UserGiveawaysResponse copyWith({
    int? score,
    int? level,
  }) {
    score ??= this.score;
    level ??= this.level;

    final _copy_score = score;
    final _copy_level = level;

    return UserGiveawaysResponse(
      score: _copy_score,
      level: _copy_level,
    );
  }
}
