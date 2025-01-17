part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// EventCreator

class EventCreator {
  String? id;
  String? nick;
  String? phrase;
  String? picture;
  int? score;
  String? type;
  int? statusRelation;
  bool? valoration;
  int? totalValorations;
  int? totalEventsCreated;
  int? totalEventsJoined;
  num? percentAssistanceEvent;

  EventCreator({
    this.id,
    this.nick,
    this.phrase,
    this.picture,
    this.score,
    this.type,
    this.statusRelation,
    this.valoration,
    this.totalValorations,
    this.totalEventsCreated,
    this.totalEventsJoined,
    this.percentAssistanceEvent,
  });

  bool get isNormal => type == ProfileType.normal;
  bool get isVip => type == ProfileType.vip;
  bool get isPro => type == ProfileType.pro;

  @override
  String toString() {
    return 'EventCreator[id=$id, nick=$nick, phrase=$phrase, picture=$picture, statusRelation=$statusRelation, valoration=$valoration, score=$score,  type=$type, valoration=$valoration, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    nick = (json[r'nick'] == null) ? null : (json[r'nick'] as String?);
    phrase = (json[r'phrase'] == null) ? null : (json[r'phrase'] as String?);
    picture = (json[r'picture'] == null) ? null : (json[r'picture'] as String?);
    score = (json[r'score'] == null) ? null : (json[r'score'] as int?);
    type = (json[r'type'] == null) ? null : (json[r'type'] as String?);
    statusRelation = (json[r'statusRelation'] == null) ? null : (json[r'statusRelation'] as int?);
    valoration = (json[r'valoration'] == null) ? null : (json[r'valoration'] as bool?);
    totalValorations = (json[r'totalValorations'] == null) ? null : (json[r'totalValorations'] as int?);
    totalEventsCreated = (json[r'totalEventsCreated'] == null) ? null : (json[r'totalEventsCreated'] as int?);
    totalEventsJoined = (json[r'totalEventsJoined'] == null) ? null : (json[r'totalEventsJoined'] as int?);
    percentAssistanceEvent =
        (json[r'percentAssistanceEvent'] == null) ? null : (json[r'percentAssistanceEvent'] as num?);
  }

  EventCreator.fromJson(Map<String, dynamic>? json) {
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
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (score != null) {
      json[r'score'] = score;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (statusRelation != null) {
      json[r'statusRelation'] = statusRelation;
    }
    if (valoration != null) {
      json[r'valoration'] = valoration;
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

  static List<EventCreator> listFromJson(List<dynamic>? json) {
    return json == null ? <EventCreator>[] : json.map((value) => EventCreator.fromJson(value)).toList();
  }

  static Map<String, EventCreator> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, EventCreator>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EventCreator.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is EventCreator && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          nick == __other.nick &&
          phrase == __other.phrase &&
          picture == __other.picture &&
          score == __other.score &&
          type == __other.type &&
          statusRelation == __other.statusRelation &&
          valoration == __other.valoration &&
          totalValorations == __other.totalValorations &&
          totalEventsCreated == __other.totalEventsCreated &&
          totalEventsJoined == __other.totalEventsJoined &&
          percentAssistanceEvent == __other.percentAssistanceEvent;
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

    if (picture != null) {
      hashCode = hashCode * 31 + picture.hashCode;
    }

    if (score != null) {
      hashCode = hashCode * 31 + score.hashCode;
    }

    if (type != null) {
      hashCode = hashCode * 31 + type.hashCode;
    }

    if (statusRelation != null) {
      hashCode = hashCode * 31 + statusRelation.hashCode;
    }

    if (valoration != null) {
      hashCode = hashCode * 31 + valoration.hashCode;
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

  EventCreator copyWith({
    String? id,
    String? nick,
    String? phrase,
    String? picture,
    int? score,
    String? type,
    int? statusRelation,
    bool? valoration,
    int? totalValorations,
    int? totalEventsCreated,
    int? totalEventsJoined,
    num? percentAssistanceEvent,
  }) {
    id ??= this.id;
    nick ??= this.nick;
    phrase ??= this.phrase;
    picture ??= this.picture;
    score ??= this.score;
    type ??= this.type;
    statusRelation ??= this.statusRelation;
    valoration ??= this.valoration;
    totalValorations ??= this.totalValorations;
    totalEventsCreated ??= this.totalEventsCreated;
    totalEventsJoined ??= this.totalEventsJoined;
    percentAssistanceEvent ??= this.percentAssistanceEvent;

    final _copy_id = id;
    final _copy_nick = nick;
    final _copy_phrase = phrase;
    final _copy_picture = picture;
    final _copy_score = score;
    final _copy_type = this.type;
    final _copy_statusRelation = statusRelation;
    final _copy_valoration = valoration;
    final _copy_totalValorations = totalValorations;
    final _copy_totalEventsCreated = totalEventsCreated;
    final _copy_totalEventsJoined = totalEventsJoined;
    final _copy_percentAssistanceEvent = percentAssistanceEvent;

    return EventCreator(
      id: _copy_id,
      nick: _copy_nick,
      phrase: _copy_phrase,
      picture: _copy_picture,
      score: _copy_score,
      type: _copy_type,
      statusRelation: _copy_statusRelation,
      valoration: _copy_valoration,
      totalValorations: _copy_totalValorations,
      totalEventsCreated: _copy_totalEventsCreated,
      totalEventsJoined: _copy_totalEventsJoined,
      percentAssistanceEvent: _copy_percentAssistanceEvent,
    );
  }
}
