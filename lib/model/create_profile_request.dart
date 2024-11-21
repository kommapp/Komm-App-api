part of komm.api;

// This file is generated by https://github.com/dart-ogurets/dart-openapi-maven - you should not modify it
// log generation bugs on Github, as part of the license, you must not remove these headers from the Mustache templates.

// createProfile_request
class CreateProfileRequest {
  String?             id;
  String?             nick;
  String?             description;
  String?             phrase;
  int?                status;
  int?                public;
  List<String>        languages;
  List<String>        hobbies;
  List<String>        otherHobbies;

  ProfilePreferences? preferences;

  int? dateBirth;
  int? gender;
  int? height;
  int? education;
  int? complexion;
  int? country;

  CreateProfileRequest({
    this.id,
    this.nick,
    this.description,
    this.phrase,
    List<String>?       languages,
    this.status = 1,
    this.public = 1,
    List<String>?       hobbies,
    List<String>?       otherHobbies,
    ProfilePreferences? preferences,
    this.dateBirth  = 0,
    this.gender     = 0,
    this.height     = 0,
    this.education  = 0,
    this.complexion = 0,
    this.country    = 0
  }):  this.hobbies      = hobbies      ?? [],
       this.otherHobbies = otherHobbies ?? [],
       this.languages    = languages    ?? [],
       this.preferences  = preferences  ?? ProfilePreferences();

  @override
  String toString() {
    return 'CreateProfileRequest[id=$id, nick=$nick, description=$description, phrase=$phrase, datebirth=$dateBirth, gender=$gender, height=$height, complexion=$complexion, education=$education, language=$languages, country=$country, status=$status, public=$public';
  }

  fromJson(Map<String, dynamic>? json) {
    if (json == null) return;

    id          = (json[r'id']          == null) ? null : (json[r'id'] as String?);
    nick        = (json[r'nick']        == null) ? null : (json[r'nick'] as String?);
    description = (json[r'description'] == null) ? null : (json[r'description'] as String?);
    phrase      = (json[r'phrase']      == null) ? null : (json[r'phrase'] as String?);
    status      = (json[r'status']      == null) ? null : (json[r'status'] as int?);
    public      = (json[r'public']      == null) ? null : (json[r'public'] as int?);
    dateBirth   = (json[r'datebirth']   == null) ? null : (json[r'datebirth'] as int?);

    preferences = (json[r'preference']  == null) ? null: ProfilePreferences.fromJson(json[r'preference']);

    gender      = (json[r'gender']      == null) ? null : (json[r'gender'] as int?);
    height      = (json[r'height']      == null) ? null : (json[r'height'] as int?);
    complexion  = (json[r'complexion']  == null) ? null : (json[r'complexion'] as int?);
    education   = (json[r'education']   == null) ? null : (json[r'education'] as int?);
    country     = (json[r'country']     == null) ? null : (json[r'country'] as int?);
  }

  CreateProfileRequest.fromJson(Map<String, dynamic>? json)
    : hobbies = [], languages = [], otherHobbies = []  {

    fromJson(json); // allows child classes to call
  }

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (nick != null) {
      json[r'nick'] = nick!.trim();
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (phrase != null) {
      json[r'phrase'] = phrase;
    }
    if (dateBirth != null) {
      json[r'datebirth'] = dateBirth;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (public != null) {
      json[r'public'] = public;
    }
    if (preferences != null) {
      json[r'preference'] = preferences!.toJson();
    }
    if (gender != null) {
      json[r'gender'] = gender;
    }
    if (height != null) {
      json[r'height'] = height;
    }
    if (complexion != null) {
      json[r'complexion'] = complexion;
    }
    if (education != null) {
      json[r'education'] = education;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    for (int i = 0; i < hobbies.length; i++) {
      json['hobbies[$i]'] = hobbies[i];
    }
    json[r'hobbies']       = hobbies;
    json[r'language']      = languages;
    json[r'other_hobbies'] = otherHobbies;

    return json;
  }

  static List<CreateProfileRequest> listFromJson(List<dynamic>? json) {
    return json == null ? <CreateProfileRequest>[] : json.map((value) => CreateProfileRequest.fromJson(value)).toList();
  }

  static Map<String, CreateProfileRequest> mapFromJson(Map<String, dynamic>? json) {
    final map = <String, CreateProfileRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateProfileRequest.fromJson(value));
    }
    return map;
  }

  @override
  bool operator ==(Object? __other) {
    if (identical(this, __other)) {
      return true;
    }

    if (__other is CreateProfileRequest && runtimeType == __other.runtimeType) {
      return id == __other.id &&
          nick == __other.nick &&
          description == __other.description &&
          phrase == __other.phrase &&
          dateBirth == __other.dateBirth &&
          gender == __other.gender &&
          height == __other.height &&
          complexion == __other.complexion &&
          education == __other.education &&
          languages == __other.languages &&
          country == __other.country &&
          status == __other.status &&
          public == __other.public;
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

    if (description != null) {
      hashCode = hashCode * 31 + description.hashCode;
    }

    if (phrase != null) {
      hashCode = hashCode * 31 + phrase.hashCode;
    }

    if (dateBirth != null) {
      hashCode = hashCode * 31 + dateBirth.hashCode;
    }

    if (gender != null) {
      hashCode = hashCode * 31 + gender.hashCode;
    }

    if (height != null) {
      hashCode = hashCode * 31 + height.hashCode;
    }

    if (complexion != null) {
      hashCode = hashCode * 31 + complexion.hashCode;
    }

    if (education != null) {
      hashCode = hashCode * 31 + education.hashCode;
    }

    if (languages != null) {
      hashCode = hashCode * 31 + languages.hashCode;
    }

    if (country != null) {
      hashCode = hashCode * 31 + country.hashCode;
    }

    if (status != null) {
      hashCode = hashCode * 31 + status.hashCode;
    }

    if (public != null) {
      hashCode = hashCode * 31 + public.hashCode;
    }

    return hashCode;
  }

  CreateProfileRequest copyWith({
    String? id,
    String? nick,
    String? description,
    String? phrase,
    int?    dateBirth,
    int?    gender,
    int?    height,
    int?    complexion,
    int?    education,
    int?    country,
    int?    status,
    int?    public,
  }) {
    id ??= this.id;
    nick ??= this.nick;
    description ??= this.description;
    phrase ??= this.phrase;
    dateBirth ??= this.dateBirth;
    gender ??= this.gender;
    height ??= this.height;
    complexion ??= this.complexion;
    education ??= this.education;
    country ??= this.country;
    status ??= this.status;
    public ??= this.public;

    final _copy_id = id;
    final _copy_nick = nick;
    final _copy_description = description;
    final _copy_phrase = phrase;
    final _copy_datebirth = dateBirth;
    final _copy_gender = gender;
    final _copy_height = height;
    final _copy_complexion = complexion;
    final _copy_education = education;
    final _copy_country = country;
    final _copy_status = status;
    final _copy_public = public;

    return CreateProfileRequest(
        id: _copy_id,
        nick: _copy_nick,
        description: _copy_description,
        phrase: _copy_phrase,
        dateBirth: _copy_datebirth,
        gender: _copy_gender,
        height: _copy_height,
        complexion: _copy_complexion,
        education: _copy_education,
        country: _copy_country,
        status: _copy_status,
        public: _copy_public);
  }
}
