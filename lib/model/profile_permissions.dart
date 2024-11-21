part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ProfilePermissions
class ProfilePermissions {
  num? totalEvents;

  num? totalEventsActivePerWeek;

  num? totalEventsParticipants;

  num? eventsMoneyLimit;

  num? eventsAdvanceHour;

  num? limitFriendRequest;

  bool? eventsActive;

  ProfilePermissions({
    this.totalEvents,
    this.totalEventsActivePerWeek,
    this.totalEventsParticipants,
    this.eventsMoneyLimit,
    this.eventsAdvanceHour,
    this.limitFriendRequest,
    this.eventsActive,
  });

  @override
  String toString() {
    return 'ProfilePermissions[totalEvents=$totalEvents, totalEventsActivePerWeek=$totalEventsActivePerWeek, totalEventsParticipants=$totalEventsParticipants, eventsMoneyLimit=$eventsMoneyLimit, eventsAdvanceHour=$eventsAdvanceHour, limitFriendRequest=$limitFriendRequest, eventsActive=$eventsActive, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    if (json[r'total_events'] != null) {
      totalEvents = json[r'total_events'] as num;
    }

    if (json[r'total_events_active_per_week'] != null) {
      totalEventsActivePerWeek = json[r'total_events_active_per_week'] as num;
    }

    if (json[r'total_events_participants'] != null) {
      totalEventsParticipants = json[r'total_events_participants'] as num;
    }

    if (json[r'events_money_limit'] != null) {
      eventsMoneyLimit = json[r'events_money_limit'] as num;
    }

    if (json[r'events_advance_hour'] != null) {
      eventsAdvanceHour = json[r'events_advance_hour'] as num;
    }

    if (json[r'limit_friend_request'] != null) {
      limitFriendRequest = json[r'limit_friend_request'] as num;
    }

    if (json[r'events_active'] != null) {
      eventsActive = json[r'events_active'] as bool;
    }
  }

  ProfilePermissions.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (totalEvents != null) {}
    if (totalEventsActivePerWeek != null) {}
    if (totalEventsParticipants != null) {}
    if (eventsMoneyLimit != null) {}
    if (eventsAdvanceHour != null) {}
    if (limitFriendRequest != null) {}
    if (eventsActive != null) {
      json[r'events_active'] = eventsActive;
    }
    return json;
  }

  static List<ProfilePermissions> listFromJson(List<dynamic>? json) {
    return json == null ? <ProfilePermissions>[] : json.map((value) => ProfilePermissions.fromJson(value)).toList();
  }

  static Map<String, ProfilePermissions> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ProfilePermissions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProfilePermissions.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ProfilePermissions && runtimeType == __other.runtimeType) {
      return totalEvents == __other.totalEvents && // __other

          totalEventsActivePerWeek == __other.totalEventsActivePerWeek && // __other

          totalEventsParticipants == __other.totalEventsParticipants && // __other

          eventsMoneyLimit == __other.eventsMoneyLimit && // __other

          eventsAdvanceHour == __other.eventsAdvanceHour && // __other

          limitFriendRequest == __other.limitFriendRequest && // __other

          eventsActive == __other.eventsActive;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (totalEvents != null) {
      hashCode = hashCode * 31 + totalEvents.hashCode;
    }

    if (totalEventsActivePerWeek != null) {
      hashCode = hashCode * 31 + totalEventsActivePerWeek.hashCode;
    }

    if (totalEventsParticipants != null) {
      hashCode = hashCode * 31 + totalEventsParticipants.hashCode;
    }

    if (eventsMoneyLimit != null) {
      hashCode = hashCode * 31 + eventsMoneyLimit.hashCode;
    }

    if (eventsAdvanceHour != null) {
      hashCode = hashCode * 31 + eventsAdvanceHour.hashCode;
    }

    if (limitFriendRequest != null) {
      hashCode = hashCode * 31 + limitFriendRequest.hashCode;
    }

    if (eventsActive != null) {
      hashCode = hashCode * 31 + eventsActive.hashCode;
    }

    return hashCode;
  }

  ProfilePermissions copyWith({
    num? totalEvents,
    num? totalEventsActivePerWeek,
    num? totalEventsParticipants,
    num? eventsMoneyLimit,
    num? eventsAdvanceHour,
    num? limitFriendRequest,
    bool? eventsActive,
  }) {
    totalEvents ??= this.totalEvents;
    totalEventsActivePerWeek ??= this.totalEventsActivePerWeek;
    totalEventsParticipants ??= this.totalEventsParticipants;
    eventsMoneyLimit ??= this.eventsMoneyLimit;
    eventsAdvanceHour ??= this.eventsAdvanceHour;
    limitFriendRequest ??= this.limitFriendRequest;
    eventsActive ??= this.eventsActive;

    final _copy_totalEvents = totalEvents;
    final _copy_totalEventsActivePerWeek = totalEventsActivePerWeek;
    final _copy_totalEventsParticipants = totalEventsParticipants;
    final _copy_eventsMoneyLimit = eventsMoneyLimit;
    final _copy_eventsAdvanceHour = eventsAdvanceHour;
    final _copy_limitFriendRequest = limitFriendRequest;
    final _copy_eventsActive = eventsActive;

    return ProfilePermissions(
      totalEvents: _copy_totalEvents,
      totalEventsActivePerWeek: _copy_totalEventsActivePerWeek,
      totalEventsParticipants: _copy_totalEventsParticipants,
      eventsMoneyLimit: _copy_eventsMoneyLimit,
      eventsAdvanceHour: _copy_eventsAdvanceHour,
      limitFriendRequest: _copy_limitFriendRequest,
      eventsActive: _copy_eventsActive,
    );
  }
}
