part of komm.api;

class Event {
  String? id;
  String? title;
  String? description;
  String? descriptionExtended;
  num? price;
  int? paxes;
  int? externalPaxes;
  int? participantStatus;
  int? status;
  num? score;
  int? totalOrgValorations;
  String? dateInit;
  String? dateEnd;
  num? duration;
  Poi? location;
  int? sendToBlocked;
  int? filterToPreferences;
  int? requestValuation;
  int? validateRequest;
  String? picture;
  EventCreator? profile;
  Hobby? hobby;
  String? chatId;
  bool? orgBlocked;
  String? orgProfileType;
  int? totalConfirm;
  int? totalPending;
  int? totalChecked;
  String? type;
  bool? validationActive;
  String? linkShare;
  bool? org_checkin;

  Event({
    this.id,
    this.title,
    this.description,
    this.descriptionExtended,
    this.price,
    this.paxes,
    this.externalPaxes,
    this.status,
    this.score,
    this.totalOrgValorations,
    this.participantStatus,
    this.dateInit,
    this.dateEnd,
    this.duration,
    this.location,
    this.sendToBlocked,
    this.filterToPreferences,
    this.requestValuation,
    this.validateRequest,
    this.picture,
    this.profile,
    this.hobby,
    this.chatId,
    this.orgBlocked,
    this.orgProfileType,
    this.totalConfirm,
    this.totalPending,
    this.totalChecked,
    this.type,
    this.validationActive,
    this.linkShare,
    this.org_checkin,
  });

  bool get isNormal => type == EventType.normal;
  bool get isVip => type == EventType.vip;
  bool get isPro => type == EventType.pro;

  int get totalParticipants => (totalConfirm ?? 0) + (externalPaxes ?? 0);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Event &&
          other.id == id &&
          other.title == title &&
          other.description == description &&
          other.descriptionExtended == descriptionExtended &&
          other.price == price &&
          other.paxes == paxes &&
          other.externalPaxes == externalPaxes &&
          other.status == status &&
          other.score == score &&
          other.totalOrgValorations == totalOrgValorations &&
          other.participantStatus == participantStatus &&
          other.dateInit == dateInit &&
          other.dateEnd == dateEnd &&
          other.duration == duration &&
          other.location == location &&
          other.sendToBlocked == sendToBlocked &&
          other.filterToPreferences == filterToPreferences &&
          other.requestValuation == requestValuation &&
          other.validateRequest == validateRequest &&
          other.picture == picture &&
          other.profile == profile &&
          other.hobby == hobby &&
          other.chatId == chatId &&
          other.orgBlocked == orgBlocked &&
          other.orgProfileType == orgProfileType &&
          other.totalConfirm == totalConfirm &&
          other.totalPending == totalPending &&
          other.totalChecked == totalChecked &&
          other.type == type &&
          other.validationActive == validationActive &&
          other.org_checkin == org_checkin &&
          other.linkShare == linkShare;

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (descriptionExtended == null ? 0 : descriptionExtended.hashCode) +
      (price == null ? 0 : price.hashCode) +
      (paxes == null ? 0 : paxes.hashCode) +
      (externalPaxes == null ? 0 : externalPaxes.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (score == null ? 0 : score.hashCode) +
      (totalOrgValorations == null ? 0 : totalOrgValorations.hashCode) +
      (participantStatus == null ? 0 : participantStatus.hashCode) +
      (dateInit == null ? 0 : dateInit.hashCode) +
      (dateEnd == null ? 0 : dateEnd.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      (location == null ? 0 : location.hashCode) +
      (sendToBlocked == null ? 0 : sendToBlocked.hashCode) +
      (filterToPreferences == null ? 0 : filterToPreferences.hashCode) +
      (requestValuation == null ? 0 : requestValuation.hashCode) +
      (validateRequest == null ? 0 : validateRequest.hashCode) +
      (picture == null ? 0 : picture.hashCode) +
      (profile == null ? 0 : profile.hashCode) +
      (hobby == null ? 0 : hobby.hashCode) +
      (chatId == null ? 0 : chatId.hashCode) +
      (orgBlocked == null ? 0 : orgBlocked.hashCode) +
      (orgProfileType == null ? 0 : orgProfileType.hashCode) +
      (totalConfirm == null ? 0 : totalConfirm.hashCode) +
      (totalPending == null ? 0 : totalPending.hashCode) +
      (totalChecked == null ? 0 : totalChecked.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (validationActive == null ? 0 : validationActive.hashCode) +
      (org_checkin == null ? 0 : org_checkin.hashCode) +
      (linkShare == null ? 0 : linkShare.hashCode);

  @override
  String toString() =>
      'Event[id=$id, title=$title, description=$description, descriptionExtended=$descriptionExtended, price=$price, paxes=$paxes, externalPaxes=$externalPaxes, status=$status, score=$score, totalOrgValorations=$totalOrgValorations, dateInit=$dateInit, dateEnd=$dateEnd, duration=$duration, location=$location, sendToBlocked=$sendToBlocked, filterToPreferences=$filterToPreferences, requestValuation=$requestValuation, validateRequest=$validateRequest, picture=$picture, profile=$profile, hobby=$hobby, chatId=$chatId, orgBlocked=$orgBlocked, orgProfileType=$orgProfileType, totalConfirm=$totalConfirm, totalPending=$totalPending, totalChecked=$totalChecked, pro=$type, validationActive=$validationActive, linkShare=$linkShare], org_checking=$org_checkin,';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (descriptionExtended != null) {
      json[r'description_extend'] = descriptionExtended;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (paxes != null) {
      json[r'paxes'] = paxes;
    }
    if (externalPaxes != null) {
      json[r'external_paxes'] = externalPaxes;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (score != null) {
      json[r'score'] = status;
    }
    if (totalOrgValorations != null) {
      json[r'totalOrgValorations'] = status;
    }
    if (participantStatus != null) {
      json[r'participant_status'] = participantStatus;
    }
    if (dateInit != null) {
      json[r'date_init'] = dateInit;
    }
    if (dateEnd != null) {
      json[r'date_end'] = dateEnd;
    }
    if (duration != null) {
      json[r'duration'] = duration;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    if (sendToBlocked != null) {
      json[r'send_to_blocked'] = sendToBlocked;
    }
    if (filterToPreferences != null) {
      json[r'filter_to_preferences'] = filterToPreferences;
    }
    if (requestValuation != null) {
      json[r'request_valuation'] = requestValuation;
    }
    if (validateRequest != null) {
      json[r'validate_request'] = validateRequest;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    if (profile != null) {
      json[r'profile'] = profile!.toJson();
    }
    if (hobby != null) {
      json[r'hobby'] = hobby!.toJson();
    }
    if (chatId != null) {
      json[r'chatId'] = chatId;
    }
    if (orgBlocked != null) {
      json[r'orgBlocked'] = orgBlocked;
    }
    if (orgProfileType != null) {
      json[r'orgProfileType'] = orgProfileType;
    }
    if (totalConfirm != null) {
      json[r'totalConfirm'] = totalConfirm;
    }
    if (totalPending != null) {
      json[r'totalPending'] = totalPending;
    }
    if (totalChecked != null) {
      json[r'totalChecked'] = totalChecked;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (validationActive != null) {
      json[r'validation_active'] = validationActive;
    }
    if (linkShare != null) {
      json[r'link_share'] = linkShare;
    }
    if (org_checkin != null) {
      json[r'org_checkin'] = org_checkin;
    }

    return json;
  }

  /// Returns a new [Event] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Event fromJson(Map<String, dynamic> json) => Event(
        id: json[r'id'],
        title: json[r'title'],
        description: json[r'description'],
        descriptionExtended: json[r'description_extend'],
        price: json[r'price'] == null ? null : json[r'price'].toDouble(),
        paxes: json[r'paxes'],
        externalPaxes: json[r'external_paxes'],
        status: json[r'status'],
        score: json[r'score'],
        totalOrgValorations: json[r'totalOrgValorations'],
        participantStatus: json[r'participant_status'],
        dateInit: json[r'date_init'],
        dateEnd: json[r'date_end'],
        duration: json[r'duration'] == null ? null : json[r'duration'].toDouble(),
        location: Poi.fromJson(json[r'location']),
        sendToBlocked: json[r'send_to_blocked'],
        filterToPreferences: json[r'filter_to_preferences'],
        requestValuation: json[r'request_valuation'],
        validateRequest: json[r'validate_request'],
        picture: json[r'picture'],
        profile: EventCreator.fromJson(json[r'profile']),
        hobby: Hobby.fromJson(json[r'hobby']),
        chatId: json[r'chatId'],
        orgBlocked: json[r'orgBlocked'],
        orgProfileType: json[r'orgProfileType'],
        totalConfirm: json[r'totalConfirm'] ?? 0,
        totalPending: json[r'totalPending'] ?? 0,
        totalChecked: json[r'totalChecked'] ?? 0,
        type: json[r'type'],
        validationActive: json[r'validation_active'],
        linkShare: json[r'link_share'],
        org_checkin: json[r'org_checkin'],
      );

  static List<Event> listFromJson(
    List<dynamic> json, {
    bool? growable,
  }) =>
      json.isEmpty ? <Event>[] : json.map((v) => Event.fromJson(v)).toList(growable: true == growable);

  static Map<String, Event> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Event>{};
    if (json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Event.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Event-objects as value to a dart map
  static Map<String, List<Event>> mapListFromJson(
    Map<String, dynamic> json, {
    bool? growable,
  }) {
    final map = <String, List<Event>>{};
    if (json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Event.listFromJson(v, growable: growable);
      });
    }
    return map;
  }
}
