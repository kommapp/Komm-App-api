part of komm.api;

// User
class User {
  String? id;
  String? email;
  double? height;
  String? dateBirth;
  String? gender;
  String? education;
  String? complexion;
  String? country;
  int? active;
  bool? verified;

  User({
    this.id,
    this.email,
    this.height,
    this.dateBirth,
    this.gender,
    this.education,
    this.complexion,
    this.country,
    this.active,
    this.verified,
  });

  @override
  String toString() {
    return 'User[id=$id, email=$email, height=$height, dateBirth=$dateBirth, gender=$gender, education=$education, complexion=$complexion, country=$country, active=$active], verified=$verified]';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id = (json[r'id'] == null) ? null : (json[r'id'] as String?);
    email = (json[r'email'] == null) ? null : (json[r'email'] as String?);
    height = (json[r'height'] == null || json[r'height'] == 0) ? null : (json[r'height'] as num?)?.toDouble();
    dateBirth = (json[r'datebirth'] == null) ? null : (json[r'datebirth'] as String?);
    gender = (json[r'gender'] == null) ? null : (json[r'gender'] as String?);
    education = (json[r'education'] == null) ? null : (json[r'education'] as String?);
    complexion = (json[r'complexion'] == null) ? null : (json[r'complexion'] as String?);
    country = (json[r'country'] == null) ? null : (json[r'country'] as String?);
    active = (json[r'active'] == null) ? null : (json[r'active'] as int?);
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
    if (dateBirth != null) {
      json[r'datebirth'] = dateBirth;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (education != null) {
      json[r'education'] = education;
    }
    if (complexion != null) {
      json[r'complexion'] = complexion;
    }
    if (country != null) {
      json[r'country'] = country;
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
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is User && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          email == __other.email &&
          dateBirth == __other.dateBirth &&
          height == __other.height &&
          gender == __other.gender &&
          education == __other.education &&
          complexion == __other.complexion &&
          country == __other.country &&
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
    if (gender != null) {
      hashCode = hashCode * 31 + gender.hashCode;
    }
    if (education != null) {
      hashCode = hashCode * 31 + education.hashCode;
    }
    if (complexion != null) {
      hashCode = hashCode * 31 + complexion.hashCode;
    }
    if (country != null) {
      hashCode = hashCode * 31 + country.hashCode;
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
    String? dateBirth,
    String? gender,
    String? education,
    String? complexion,
    String? country,
    int? active,
    bool? verified,
  }) {
    id ??= this.id;
    email ??= this.email;
    height ??= this.height;
    dateBirth ??= this.dateBirth;
    gender ??= this.gender;
    education ??= this.education;
    complexion ??= this.complexion;
    country ??= this.country;
    active ??= this.active;
    verified ??= this.verified;

    final _copy_id = id;
    final _copy_email = email;
    final _copy_height = height;
    final _copy_dateBirth = dateBirth;
    final _copy_gender = gender;
    final _copy_education = education;
    final _copy_complexion = complexion;
    final _copy_country = country;
    final _copy_active = active;
    final _copy_verified = verified;

    return User(
      id: _copy_id,
      email: _copy_email,
      height: _copy_height,
      dateBirth: _copy_dateBirth,
      gender: _copy_gender,
      education: _copy_education,
      complexion: _copy_complexion,
      country: _copy_country,
      active: _copy_active,
      verified: _copy_verified,
    );
  }
}
