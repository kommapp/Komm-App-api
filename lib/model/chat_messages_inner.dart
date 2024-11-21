part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// ChatMessages_inner
class ChatMessagesInner {
  String? profile;

  bool? chat;

  ChatMessagesInner({
    this.profile,
    this.chat,
  });

  @override
  String toString() {
    return 'ChatMessagesInner[profile=$profile, chat=$chat, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    profile = (json[r'profile'] == null) ? null : (json[r'profile'] as String?);

    chat = (json[r'chat'] == null) ? null : (json[r'chat'] as bool?);
  }

  ChatMessagesInner.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (profile != null) {
      json[r'profile'] = profile;
    }
    if (chat != null) {
      json[r'chat'] = chat;
    }
    return json;
  }

  static List<ChatMessagesInner> listFromJson(List<dynamic>? json) {
    return json == null ? <ChatMessagesInner>[] : json.map((value) => ChatMessagesInner.fromJson(value)).toList();
  }

  static Map<String, ChatMessagesInner> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, ChatMessagesInner>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ChatMessagesInner.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is ChatMessagesInner && runtimeType == __other.runtimeType) {
      return profile == __other.profile && chat == __other.chat;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (profile != null) {
      hashCode = hashCode * 31 + profile.hashCode;
    }

    if (chat != null) {
      hashCode = hashCode * 31 + chat.hashCode;
    }

    return hashCode;
  }

  ChatMessagesInner copyWith({
    String? profile,
    bool? chat,
  }) {
    profile ??= this.profile;
    chat ??= this.chat;

    final _copy_profile = profile;
    final _copy_chat = chat;

    return ChatMessagesInner(
      profile: _copy_profile,
      chat: _copy_chat,
    );
  }
}
