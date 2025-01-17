part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ChatsByProfileResponse_inner
class ChatsByProfileResponse {
  String?      id;
  int?         status;
  ProfileInfo? profile;
  String?      message;
  String?      date;
  int?         total;
  bool?        mine;
  String? createdRelation;

  ChatsByProfileResponse({
    this.id,
    this.status,
    this.profile,
    this.message,
    this.date,
    this.total,
    this.mine,
    this.createdRelation,
  });

  @override
  String toString() {
    return 'ChatsByProfileResponse[id=$id, status=$status, profile=$profile, message=$message, date=$date, total=$total, createdRelation=$createdRelation, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    status = (json[r'status'] == null) ? null : (json[r'status'] as int?);
    profile = (json[r'profile'] == null) ? null : ProfileInfo.fromJson(json[r'profile']);
    message = (json[r'message'] == null) ? null : (json[r'message'] as String?);
    date = (json[r'date'] == null) ? null : (json[r'date'] as String?);
    total = (json[r'total'] == null) ? null : (json[r'total'] as int?);
    mine = (json[r'mine'] == null) ? null : (json[r'mine'] as bool?);
    createdRelation = (json[r'createdRelation'] == null) ? null : (json[r'createdRelation'] as String?);
  }

  ChatsByProfileResponse.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (profile != null) {
      json[r'profile'] = profile?.toJson();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (date != null) {
      json[r'date'] = date;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    if (mine != null) {
      json[r'mine'] = mine;
    }
    if (createdRelation != null) {
      json[r'createdRelation'] = createdRelation;
    }
    return json;
  }

  static List<ChatsByProfileResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <ChatsByProfileResponse>[]
        : json.map((value) => ChatsByProfileResponse.fromJson(value)).toList();
  }

  static Map<String, ChatsByProfileResponse> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ChatsByProfileResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ChatsByProfileResponse.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ChatsByProfileResponse && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          status == __other.status &&
          profile == __other.profile && // __other
          message == __other.message &&
          date == __other.date &&
          total == __other.total &&
          mine == __other.mine && 
	  createdRelation == __other.createdRelation;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }

    if (status != null) {
      hashCode = hashCode * 31 + status.hashCode;
    }

    if (profile != null) {
      hashCode = hashCode * 31 + profile.hashCode;
    }

    if (message != null) {
      hashCode = hashCode * 31 + message.hashCode;
    }

    if (date != null) {
      hashCode = hashCode * 31 + date.hashCode;
    }

    if (total != null) {
      hashCode = hashCode * 31 + total.hashCode;
    }

    if (mine != null) {
      hashCode = hashCode * 31 + mine.hashCode;
    }

    if (createdRelation != null) {
      hashCode = hashCode * 31 + createdRelation.hashCode;
    }

    return hashCode;
  }

  ChatsByProfileResponse copyWith({
    String? id,
    int? status,
    ProfileInfo? profile,
    String? message,
    String? date,
    int? total,
    bool? mine,
    String? createdRelation,
  }) {
    id ??= this.id;
    status ??= this.status;
    profile ??= this.profile;
    message ??= this.message;
    date ??= this.date;
    total ??= this.total;
    mine ??= this.mine;
    createdRelation ??= this.createdRelation;

    final _copy_id = id;
    final _copy_status = status;
    final _copy_profile = profile?.copyWith();
    final _copy_message = message;
    final _copy_date = date;
    final _copy_total = total;
    final _copy_mine = mine;
    final _copy_createdRelation = createdRelation;

    return ChatsByProfileResponse(
      id     : _copy_id,
      status : _copy_status,
      profile: _copy_profile,
      message: _copy_message,
      date   : _copy_date,
      total  : _copy_total,
      mine   : _copy_mine,
      createdRelation: _copy_createdRelation,
    );
  }
}
