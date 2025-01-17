part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// updateProfileStatusById_request
class UpdateProfileStatusByIdRequest {
  int? status;

  UpdateProfileStatusByIdRequest({
    this.status,
  });

  @override
  String toString() {
    return 'UpdateProfileStatusByIdRequest[status=$status, ]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    status = (json[r'status'] == null) ? null : (json[r'status'] as int?);
  }

  UpdateProfileStatusByIdRequest.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  static List<UpdateProfileStatusByIdRequest> listFromJson(
      List<dynamic>? json) {
    return json == null
        ? <UpdateProfileStatusByIdRequest>[]
        : json
            .map((value) => UpdateProfileStatusByIdRequest.fromJson(value))
            .toList();
  }

  static Map<String, UpdateProfileStatusByIdRequest> mapFromJson(
      Map<String, dynamic>? json) {
    final map = <String, UpdateProfileStatusByIdRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = UpdateProfileStatusByIdRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is UpdateProfileStatusByIdRequest &&
        runtimeType == __other.runtimeType) {
      return status == __other.status;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (status != null) {
      hashCode = hashCode * 31 + status.hashCode;
    }

    return hashCode;
  }

  UpdateProfileStatusByIdRequest copyWith({
    int? status,
  }) {
    status ??= this.status;

    final _copy_status = status;

    return UpdateProfileStatusByIdRequest(
      status: _copy_status,
    );
  }
}
