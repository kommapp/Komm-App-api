part of komm.api;

// User
class User {
  String? id;
  String? email;
  double? height;
  String? birthdate;
  String? genderId;
  String? educationId;
  String? complexionId;
  String? countryId;
  bool? active;
  bool? verified;

  User({
    this.id,
    this.email,
    this.height,
    this.birthdate,
    this.genderId,
    this.educationId,
    this.complexionId,
    this.countryId,
    this.active,
    this.verified,
  });

  @override
  String toString() {
    return 'User[id=$id, email=$email, height=$height, birthdate=$birthdate, genderId=$genderId, educationId=$educationId, complexionId=$complexionId, countryId=$countryId, active=$active], verified=$verified]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    email = (json[r'email'] == null) ? null : (json[r'email'] as String?);
    height = (json[r'height'] == null || json[r'height'] == 0) ? null : (json[r'height'] as num?)?.toDouble();
    birthdate = (json[r'birthdate'] == null) ? null : (json[r'birthdate'] as String?);
    genderId = (json[r'genderId'] == null) ? null : (json[r'genderId'] as String?);
    educationId = (json[r'educationId'] == null) ? null : (json[r'educationId'] as String?);
    complexionId = (json[r'complexionId'] == null) ? null : (json[r'complexionId'] as String?);
    countryId = (json[r'countryId'] == null) ? null : (json[r'countryId'] as String?);
    active = (json[r'active'] == null) ? null : (json[r'active'] as bool?);
    verified = (json[r'verified'] == null) ? null : (json[r'verified'] as bool?);
  }

  User.fromJson(Map<String, dynamic>? json) {
    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};

    if (id != null) {
      json[r'id'] = id;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (birthdate != null) {
      json[r'birthdate'] = birthdate;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    if (genderId != null) {
      json[r'genderId'] = genderId;
    }
    if (educationId != null) {
      json[r'educationId'] = educationId;
    }
    if (complexionId != null) {
      json[r'complexionId'] = complexionId;
    }
    if (countryId != null) {
      json[r'countryId'] = countryId;
    }
    if (active != null) {
      json[r'active'] = active;
    }

    if (verified != null) {
      json[r'verified'] = verified;
    }

    return json;
  }

  static List<User> listFromJson(List<dynamic>? json) {
    return json == null ? <User>[] : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, User>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is User && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          email == __other.email &&
          birthdate == __other.birthdate &&
          height == __other.height &&
          genderId == __other.genderId &&
          educationId == __other.educationId &&
          complexionId == __other.complexionId &&
          countryId == __other.countryId &&
          active == __other.active &&
          verified == __other.verified;
    }

    return false;
  }

  @override
  int get hashCode {
    var hashCode = runtimeType.hashCode;

    if (id != null) {
      hashCode = hashCode * 31 + id.hashCode;
    }
    if (height != null) {
      hashCode = hashCode * 31 + height.hashCode;
    }
    if (genderId != null) {
      hashCode = hashCode * 31 + genderId.hashCode;
    }
    if (educationId != null) {
      hashCode = hashCode * 31 + educationId.hashCode;
    }
    if (complexionId != null) {
      hashCode = hashCode * 31 + complexionId.hashCode;
    }
    if (countryId != null) {
      hashCode = hashCode * 31 + countryId.hashCode;
    }
    if (active != null) {
      hashCode = hashCode * 31 + active.hashCode;
    }
    if (verified != null) {
      hashCode = hashCode * 31 + verified.hashCode;
    }

    return hashCode;
  }

  User copyWith({
    String? id,
    String? email,
    double? height,
    String? birthdate,
    String? genderId,
    String? educationId,
    String? complexionId,
    String? countryId,
    bool? active,
    bool? verified,
  }) {
    id ??= this.id;
    email ??= this.email;
    height ??= this.height;
    birthdate ??= this.birthdate;
    genderId ??= this.genderId;
    educationId ??= this.educationId;
    complexionId ??= this.complexionId;
    countryId ??= this.countryId;
    active ??= this.active;
    verified ??= this.verified;

    final _copy_id = id;
    final _copy_email = email;
    final _copy_height = height;
    final _copy_birthdate = birthdate;
    final _copy_genderId = genderId;
    final _copy_educationId = educationId;
    final _copy_complexionId = complexionId;
    final _copy_countryId = countryId;
    final _copy_active = active;
    final _copy_verified = verified;

    return User(
      id: _copy_id,
      email: _copy_email,
      height: _copy_height,
      birthdate: _copy_birthdate,
      genderId: _copy_genderId,
      educationId: _copy_educationId,
      complexionId: _copy_complexionId,
      countryId: _copy_countryId,
      active: _copy_active,
      verified: _copy_verified,
    );
  }
}
