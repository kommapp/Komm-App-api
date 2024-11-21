part of komm.api;

class LocalApiClient {
  static dynamic serialize(Object? value) {
    try {
      if (value == null) {
        return null;
      } else if (value is List) {
        return value.map((v) => serialize(v)).toList();
      } else if (value is Map) {
        return Map.fromIterables(value.keys, value.values.map((v) => serialize(v)));
      } else if (value is String) {
        return value;
      } else if (value is bool) {
        return value;
      } else if (value is num) {
        return value;
      } else if (value is DateTime) {
        return value.toUtc().toIso8601String();
      }
      if (value is AuthResponse) {
        return value.toJson();
      }
      if (value is BlockUserRequest) {
        return value.toJson();
      }
      if (value is BlockProfileGridRequest) {
        return value.toJson();
      }
      if (value is UnblockUserRequest) {
        return value.toJson();
      }
      if (value is CancelEventRequest) {
        return value.toJson();
      }
      if (value is ChatMessage) {
        return value.toJson();
      }
      if (value is ChatsByProfileResponse) {
        return value.toJson();
      }
      if (value is ChangePasswordRequest) {
        return value.toJson();
      }
      if (value is ContactKommRequest) {
        return value.toJson();
      }
      if (value is Complexion) {
        return value.toJson();
      }
      if (value is Complaint) {
        return value.toJson();
      }
      if (value is Country) {
        return value.toJson();
      }
      if (value is CreateEventRequest) {
        return value.toJson();
      }
      if (value is CreateProfileRequest) {
        return value.toJson();
      }
      if (value is Education) {
        return value.toJson();
      }
      if (value is ErrorResponse) {
        return value.toJson();
      }
      if (value is Event) {
        return value.toJson();
      }
      if (value is EventCheckIn) {
        return value.toJson();
      }
      if (value is EventParticipant) {
        return value.toJson();
      }
      if (value is EventParticipationRequest) {
        return value.toJson();
      }
      if (value is Gender) {
        return value.toJson();
      }
      if (value is GridProfile) {
        return value.toJson();
      }
      if (value is Hobby) {
        return value.toJson();
      }
      if (value is HobbyCategory) {
        return value.toJson();
      }
      if (value is Language) {
        return value.toJson();
      }
      if (value is Profile) {
        return value.toJson();
      }
      if (value is GenerateParticipantEventQRRequest) {
        return value.toJson();
      }
      if (value is ProfileEvent) {
        return value.toJson();
      }
      if (value is Poi) {
        return value.toJson();
      }
      if (value is CreatePoiRequest) {
        return value.toJson();
      }
      if (value is ProfileInfo) {
        return value.toJson();
      }
      if (value is ProfilePicture) {
        return value.toJson();
      }
      if (value is ProfilePreferences) {
        return value.toJson();
      }
      if (value is RateParticipantRequest) {
        return value.toJson();
      }
      if (value is ReadNotificationRequest) {
        return value.toJson();
      }
      if (value is RecoverPasswordRequestRequest) {
        return value.toJson();
      }
      if (value is RecoverPasswordValidRequest) {
        return value.toJson();
      }
      if (value is RecoverPasswordChangeRequest) {
        return value.toJson();
      }
      if (value is Relation) {
        return value.toJson();
      }
      if (value is RequestRelationBody) {
        return value.toJson();
      }
      if (value is ResponseRelationBody) {
        return value.toJson();
      }
      if (value is RequestTokenResponse) {
        return value.toJson();
      }
      if (value is SignInRequest) {
        return value.toJson();
      }
      if (value is SignInResponse) {
        return value.toJson();
      }
      if (value is SignupRequest) {
        return value.toJson();
      }
      if (value is UpdateEventByIdRequest) {
        return value.toJson();
      }
      if (value is UpdateParticipantRequest) {
        return value.toJson();
      }
      if (value is UpdateProfileMainPictureByIdRequest) {
        return value.toJson();
      }
      if (value is UpdateProfilePrivacyByIdRequest) {
        return value.toJson();
      }
      if (value is UpdateProfileStatusByIdRequest) {
        return value.toJson();
      }
      if (value is UpdateProfileSocialInfoByIdRequest) {
        return value.toJson();
      }
      if (value is User) {
        return value.toJson();
      }
      if (value is ValidateParticipantEventQRRequest) {
        return value.toJson();
      }
      if (value is ValidateEmailRequest) {
        return value.toJson();
      }
      if (value is ValidateUserRequest) {
        return value.toJson();
      }
      if (value is ValidateVerificationCodeRequest) {
	return value.toJson();
      }
      if (value is ValidationResponse) {
        return value.toJson();
      }
      if (value is VerifyUserRequest) {
        return value.toJson();
      }

      return value.toString();
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
  }

  static dynamic deserializeFromString(String? json, String targetType) {
    if (json == null) {
      // HTTP Code 204
      return null;
    }

    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    final decodedJson = jsonDecode(json);
    print('decodedJson: $decodedJson');
    return deserialize(decodedJson, targetType);
  }

  static dynamic deserialize(dynamic value, String targetType) {
    if (value == null) return null; // 204
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AuthResponse':
          return AuthResponse.fromJson(value);
        case 'CancelEventRequest':
          return CancelEventRequest.fromJson(value);
        case 'ChatsByProfileResponseInner':
          return ChatsByProfileResponse.fromJson(value);
        case 'ChatMessage':
          return ChatMessage.fromJson(value);
        case 'ChatMessagesInner':
          return ChatMessagesInner.fromJson(value);
        case 'Complexion':
          return Complexion.fromJson(value);
        case 'ComplaintType':
          return ComplaintType.fromJson(value);
        case 'Country':
          return Country.fromJson(value);
        case 'CreateEventRequest':
          return CreateEventRequest.fromJson(value);
        case 'CreateProfileRequest':
          return CreateProfileRequest.fromJson(value);
        case 'Education':
          return Education.fromJson(value);
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'Event':
          return Event.fromJson(value);
        case 'EventParticipant':
          return EventParticipant.fromJson(value);
        case 'Gender':
          return Gender.fromJson(value);
        case 'Gift':
          return Gift.fromJson(value);
        case 'Giveaway':
          return Giveaway.fromJson(value);
        case 'GridsByProfileResponseInner':
          return GridProfile.fromJson(value);
        case 'Hobby':
          return Hobby.fromJson(value);
        case 'HobbyCategory':
          return HobbyCategory.fromJson(value);
        case 'Language':
          return Language.fromJson(value);
        case 'Poi':
          return Poi.fromJson(value);
        case 'Profile':
          return Profile.fromJson(value);
        case 'ProfileEvent':
          return ProfileEvent.fromJson(value);
        case 'ProfileInfo':
          return ProfileInfo.fromJson(value);
        case 'ProfileNotification':
          return ProfileNotification.fromJson(value);
        case 'ProfileNotificationNotifications':
          return ProfileNotificationNotifications.fromJson(value);
        case 'ProfilePicture':
          return ProfilePicture.fromJson(value);
        case 'ProfilePreferences':
          return ProfilePreferences.fromJson(value);
        case 'ProfilePermissions':
          return ProfilePermissions.fromJson(value);
        case 'RecoverPasswordValidResponse':
          return RecoverPasswordValidResponse.fromJson(value);
        case 'ProfileSocialInfo':
          return ProfileSocialInfo.fromJson(value);
        case 'Relation':
          return Relation.fromJson(value);
        case 'RequestRelationBody':
          return RequestRelationBody.fromJson(value);
        case 'ResponseRelationBody':
          return ResponseRelationBody.fromJson(value);
        case 'RequestTokenResponse':
          return RequestTokenResponse.fromJson(value);
        case 'SignInRequest':
          return SignInRequest.fromJson(value);
        case 'SignInResponse':
          return SignInResponse.fromJson(value);
        case 'SignupRequest':
          return SignupRequest.fromJson(value);
        case 'UpdateEventByIdRequest':
          return UpdateEventByIdRequest.fromJson(value);
        case 'UpdateProfileMainPictureByIdRequest':
          return UpdateProfileMainPictureByIdRequest.fromJson(value);
        case 'UpdateProfilePrivacyByIdRequest':
          return UpdateProfilePrivacyByIdRequest.fromJson(value);
        case 'UpdateProfileStatusByIdRequest':
          return UpdateProfileStatusByIdRequest.fromJson(value);
        case 'UploadPictureEventRequest':
          return UploadPictureEventRequest.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserGiveawaysResponse':
          return UserGiveawaysResponse.fromJson(value);
        case 'ValidateParticipantEventQRResponse':
          return ValidateParticipantEventQRResponse.fromJson(value);
        case 'ValidateEmailRequest':
          return ValidateEmailRequest.fromJson(value);
        case 'ValidationResponse':
          return ValidationResponse.fromJson(value);
        default:
          return matchLeftovers(value, targetType, (v, t) => deserialize(v, t));
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
  }

  /// Format the given parameter object into string.
  static String? parameterToString(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is DateTime) {
      // shouldn't ever be used, replaced by direct call
      return Uri.encodeComponent(value.toUtc().toIso8601String());
    } else if (value is String || value is num || value is bool) {
      return value.toString();
    }

    return jsonEncode(value);
  }
}
