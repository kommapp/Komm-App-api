part of komm.api;

class EventStatus {
  static const int Created = 1;
  static const int Started = 2;
  static const int Finished = 3;
  static const int CheckIn = 4;
  static const int Cancelled = 5;
}

class EventType {
  static const String normal = "normal";
  static const String vip = "vip";
  static const String pro = "pro";
}

class EventParticipantStatus {
  static const int NoSolicitude = -1;
  static const int Pending = 0;
  static const int Accepted = 1;
  static const int Discarded = 2;
  static const int Assisted = 3;
}

class RelationshipStatus {
  static const int NoRelation = -1;
  static const int Pending = 0;
  static const int Accepted = 1;
  static const int Rejected = 2;
}

class RelationshipResponse {
  static const int Cancel = -1;
  static const int Accepted = 1;
  static const int Rejected = 2;
}

class ComplaintTypeEnum {
  static const String chat = "chat";
  static const String event = "event";
  static const String profile = "profile";
  static const String candidate = "candidate";
}

class ProfileType {
  static const String normal = "normal";
  static const String vip = "vip";
  static const String pro = "pro";
}

class NotificationType {
  static const String chat = "chat";
  static const String relation = "relation";
  static const String event = "event";
  static const String candidate = "candidate";
}

class NotificationId {
  static const String RelationshipCandidate = "komm.relationship.candidate";
  static const String RelationshipAccepted = "komm.relationship.accepted";
  static const String EventJoinParticipant = "komm.events.join_participant";
  static const String EventPreCheck = "komm.events.pre-check";
  static const String EventRequestParticipant = "komm.events.request_participant";
  static const String EventRequestAccepted = "komm.events.request-accept";
  static const String EventInit = "komm.events.init";
  static const String EventFinish = "komm.events.finish";
  static const String EventCheckIn = "komm.events.open-check-in";
  static const String EventUpdate = "komm.events.update";
  static const String EventChatMessage = "komm.chat.event.message";
  static const String EventQrValidate = "komm.events.qr_validate";
  static const String ContactChatMessage = "komm.chat.message";
}
