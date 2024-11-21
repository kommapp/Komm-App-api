part of komm.api;

// Profile
class Profile {
  String? id;
  String? nick;
  String? phrase;
  String? description;
  String? picture;
  bool? public = true;
  num? score;
  String? type;
  String? hobbyCategory;
  int? totalValorations;
  int? totalEventsCreated;
  int? totalEventsJoined;
  num? percentAssistanceEvent;

  List<String>? languages = [];

  bool get isNormal => type == ProfileType.normal;
  bool get isVip => type == ProfileType.vip;
  bool get isPro => type == ProfileType.pro;

  Profile({
    this.id,
    this.nick,
    this.phrase,
    this.description,
    this.picture,
    this.public,
    this.score,
    this.type,
    this.languages,
    this.hobbyCategory,
    this.totalValorations,
    this.totalEventsCreated,
    this.totalEventsJoined,
    this.percentAssistanceEvent,
  });

  @override
  String toString() {
    return 'Profile[id=$id, nick=$nick, phrase=$phrase, description=$description, picture=$picture, public=$public, score=$score, type=$type, languages=$languages, totalValorations=$totalValorations, totalEventsCreated=$totalEventsCreated, totalEventsJoined=$totalEventsJoined, percentAssistanceEvent=$percentAssistanceEvent, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    nick = (json[r'nick'] == null) ? null : (json[r'nick'] as String?);
    phrase = (json[r'phrase'] == null) ? null : (json[r'phrase'] as String?);
    description = (json[r'description'] == null) ? null : (json[r'description'] as String?);
    picture = (json[r'picture'] == null) ? null : (json[r'picture'] as String?);
    public = (json[r'public'] == null) ? null : (json[r'public'] == 1);
    score = (json[r'score'] == null) ? null : (json[r'score'] as num?);
    type = (json[r'type'] == null) ? null : (json[r'type'] as String?);
    hobbyCategory = (json[r'hobbyCategory'] == null) ? null : (json[r'hobbyCategory'] as String?);
    totalValorations = (json[r'totalValorations'] == null) ? null : (json[r'totalValorations'] as int?);
    totalEventsCreated = (json[r'totalEventsCreated'] == null) ? null : (json[r'totalEventsCreated'] as int?);
    totalEventsJoined = (json[r'totalEventsJoined'] == null) ? null : (json[r'totalEventsJoined'] as int?);
    percentAssistanceEvent =
        (json[r'percentAssistanceEvent'] == null) ? null : (json[r'percentAssistanceEvent'] as num?);

    {
      final _jsonData = json[r'languages'];
      languages = (_jsonData == null)
          ? []
          : ((dynamic data) {
              return (data as List<dynamic>?)?.cast<String>() ?? <String>[];
            }(_jsonData));
    } // _jsonFieldName
  }

  Profile.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};

    if (id != null) {
      json[r'id'] = id;
    }
    if (nick != null) {
      json[r'nick'] = nick;
    }
    if (phrase != null) {
      json[r'phrase'] = phrase;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (public != null) {
      json[r'public'] = public;
    }
    if (score != null) {
      json[r'score'] = score;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (languages != null) {
      json[r'language'] = languages;
    }
    if (hobbyCategory != null) {
      json[r'hobbyCategory'] = hobbyCategory;
    }
    if (totalValorations != null) {
      json[r'totalValorations'] = totalValorations;
    }
    if (totalEventsCreated != null) {
      json[r'totalEventsCreated'] = totalEventsCreated;
    }
    if (totalEventsJoined != null) {
      json[r'totalEventsJoined'] = totalEventsJoined;
    }
    if (percentAssistanceEvent != null) {
      json[r'percentAssistanceEvent'] = percentAssistanceEvent;
    }

    return json;
  }

  static List<Profile> listFromJson(List<dynamic>? json) {
    return json == null ? <Profile>[] : json.map((value) => Profile.fromJson(value)).toList();
  }

  static Map<String, Profile> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, Profile>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Profile.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is Profile && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          nick == __other.nick &&
          phrase == __other.phrase &&
          description == __other.description &&
          picture == __other.picture &&
          public == __other.public &&
          score == __other.score &&
          type == __other.type &&
          hobbyCategory == __other.hobbyCategory &&
          totalValorations == __other.totalValorations &&
          totalEventsCreated == __other.totalEventsCreated &&
          totalEventsJoined == __other.totalEventsJoined &&
          percentAssistanceEvent == __other.percentAssistanceEvent &&
          (languages?.every((l) => __other.languages?.contains(l) ?? false) ?? true);
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }
    if (nick != null) {
      hashCode = hashCode * 31 + nick.hashCode;
    }
    if (phrase != null) {
      hashCode = hashCode * 31 + phrase.hashCode;
    }
    if (description != null) {
      hashCode = hashCode * 31 + description.hashCode;
    }
    if (picture != null) {
      hashCode = hashCode * 31 + picture.hashCode;
    }
    if (public != null) {
      hashCode = hashCode * 31 + public.hashCode;
    }
    if (score != null) {
      hashCode = hashCode * 31 + score.hashCode;
    }
    if (type != null) {
      hashCode = hashCode * 31 + type.hashCode;
    }
    if (hobbyCategory != null) {
      hashCode = hashCode * 31 + hobbyCategory.hashCode;
    }
    if (totalValorations != null) {
      hashCode = hashCode * 31 + totalValorations.hashCode;
    }
    if (totalEventsCreated != null) {
      hashCode = hashCode * 31 + totalEventsCreated.hashCode;
    }
    if (totalEventsJoined != null) {
      hashCode = hashCode * 31 + totalEventsJoined.hashCode;
    }
    if (percentAssistanceEvent != null) {
      hashCode = hashCode * 31 + percentAssistanceEvent.hashCode;
    }

    return hashCode;
  }

  Profile copyWith({
    String? id,
    String? nick,
    String? phrase,
    String? description,
    String? picture,
    bool? public,
    num? score,
    String? type,
    String? hobbyCategory,
    List<String>? languages,
    int? totalValorations,
    int? totalEventsCreated,
    int? totalEventsJoined,
    num? percentAssistanceEvent,
  }) {
    id ??= this.id;
    nick ??= this.nick;
    phrase ??= this.phrase;
    description ??= this.description;
    picture ??= this.picture;
    public ??= this.public;
    type ??= this.type;
    score ??= this.score;
    hobbyCategory ??= this.hobbyCategory;
    languages ??= this.languages;
    totalValorations ??= this.totalValorations;
    totalEventsCreated ??= this.totalEventsCreated;
    totalEventsJoined ??= this.totalEventsJoined;
    percentAssistanceEvent ??= this.percentAssistanceEvent;

    final _copy_id = id;
    final _copy_nick = nick;
    final _copy_phrase = phrase;
    final _copy_description = description;
    final _copy_picture = picture;
    final _copy_public = public;
    final _copy_score = score;
    final _copy_type = type;
    final _copy_language = languages;
    final _copy_hobbyCategory = hobbyCategory;
    final _copy_totalValorations = totalValorations;
    final _copy_totalEventsCreated = totalEventsCreated;
    final _copy_totalEventsJoined = totalEventsJoined;
    final _copy_percentAssistanceEvent = percentAssistanceEvent;

    return Profile(
      id: _copy_id,
      nick: _copy_nick,
      phrase: _copy_phrase,
      description: _copy_description,
      picture: _copy_picture,
      public: _copy_public,
      score: _copy_score,
      type: _copy_type,
      languages: _copy_language,
      hobbyCategory: _copy_hobbyCategory,
      totalValorations: _copy_totalValorations,
      totalEventsCreated: _copy_totalEventsCreated,
      totalEventsJoined: _copy_totalEventsJoined,
      percentAssistanceEvent: _copy_percentAssistanceEvent,
    );
  }
}
