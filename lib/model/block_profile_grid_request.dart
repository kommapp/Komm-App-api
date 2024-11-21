part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// blockProfileGrid_request
class BlockProfileGridRequest {
  String? profileMain;
  String? profileBlock;

  BlockProfileGridRequest({
    this.profileMain,
    this.profileBlock,
  });

  @override
  String toString() {
    return 'BlockProfileGridRequest[profileMain=$profileMain, profileBlock=$profileBlock, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    profileMain = (json[r'profile_main'] == null)
        ? null
        : (json[r'profile_main'] as String?);

    profileBlock = (json[r'profile_block'] == null)
        ? null
        : (json[r'profile_block'] as String?);
  }

  BlockProfileGridRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (profileMain != null) {
      json[r'profile_main'] = profileMain;
    }
    if (profileBlock != null) {
      json[r'profile_block'] = profileBlock;
    }
    return json;
  }

  static List<BlockProfileGridRequest> listFromJson(List<dynamic>? json) {
    return json == null
        ? <BlockProfileGridRequest>[]
        : json.map((value) => BlockProfileGridRequest.fromJson(value)).toList();
  }

  static Map<String, BlockProfileGridRequest> mapFromJson(
      Map<String, dynamic>? json) {
    final map = <String, BlockProfileGridRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BlockProfileGridRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is BlockProfileGridRequest &&
        runtimeType == __other.runtimeType) {
      return profileMain == __other.profileMain &&
          profileBlock == __other.profileBlock;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (profileMain != null) {
      hashCode = hashCode * 31 + profileMain.hashCode;
    }

    if (profileBlock != null) {
      hashCode = hashCode * 31 + profileBlock.hashCode;
    }

    return hashCode;
  }

  BlockProfileGridRequest copyWith({
    String? profileMain,
    String? profileBlock,
  }) {
    profileMain ??= this.profileMain;
    profileBlock ??= this.profileBlock;

    final _copy_profileMain = profileMain;
    final _copy_profileBlock = profileBlock;

    return BlockProfileGridRequest(
      profileMain: _copy_profileMain,
      profileBlock: _copy_profileBlock,
    );
  }
}