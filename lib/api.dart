library komm.api;

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:komm_api/console_logger_api_delegate.dart';
import 'package:openapi_dart_common/openapi.dart';

part 'api/auth_api.dart';

part 'api/chat_api.dart';
part 'api/complaint_api.dart';
part 'api/event_api.dart';
part 'api/grids_api.dart';
part 'api/poi_api.dart';
part 'api/profile_api.dart';
part 'api/relations_api.dart';
part 'api/static_data_api.dart';
part 'api/user_api.dart';
part 'api/validation_api.dart';
part 'api_client.dart';
part 'api/feedback_api.dart';
part 'api/giveaway_api.dart';

part 'model/auth_response.dart';

part 'model/enums.dart';
part 'model/block_user_request.dart';
part 'model/block_profile_grid_request.dart';
part 'model/cancel_event_request.dart';
part 'model/chats_by_profile_response.dart';
part 'model/chat_message.dart';
part 'model/chat_messages_inner.dart';
part 'model/change_password_request.dart';
part 'model/complexion.dart';
part 'model/complaint.dart';
part 'model/complaint_type.dart';
part 'model/contact_komm_request.dart';
part 'model/country.dart';
part 'model/create_event_request.dart';
part 'model/create_poi_request.dart';
part 'model/create_profile_request.dart';
part 'model/education.dart';
part 'model/error_response.dart';
part 'model/event.dart';
part 'model/event_check_in.dart';
part 'model/event_event_id_delete_request.dart';
part 'model/event_participant.dart';
part 'model/event_creator.dart';
part 'model/event_participation_request.dart';
part 'model/gender.dart';
part 'model/generate_participant_event_qr_request.dart';
part 'model/giveaway.dart';
part 'model/gift.dart';
part 'model/grid_profile.dart';
part 'model/hobby.dart';
part 'model/hobby_category.dart';
part 'model/language.dart';
part 'model/poi.dart';
part 'model/profile.dart';
part 'model/profile_permissions.dart';	
part 'model/profile_info.dart';
part 'model/profile_event.dart';
part 'model/profile_notification.dart';
part 'model/profile_notification_notifications.dart';
part 'model/profile_picture.dart';
part 'model/profile_preferences.dart';
part 'model/profile_social_info.dart';
part 'model/rate_participant_request.dart';
part 'model/read_notification_request.dart';
part 'model/recover_password_change_request.dart';
part 'model/recover_password_request_request.dart';
part 'model/recover_password_valid_request.dart';
part 'model/recover_password_valid_response.dart';
part 'model/relation.dart';
part 'model/request_relation_body.dart';
part 'model/request_relation_body1.dart';
part 'model/request_token_response.dart';
part 'model/sign_in_request.dart';
part 'model/sign_up_request.dart';
part 'model/sign_in_response.dart';
part 'model/user.dart';
part 'model/user_giveaways_response.dart';
part 'model/unblock_user_request.dart';
part 'model/update_event_by_id_request.dart';
part 'model/update_participant_request.dart';
part 'model/upload_picture_event_request.dart';
part 'model/update_profile_main_picture_by_id_request.dart';
part 'model/update_profile_privacy_by_id_request.dart';
part 'model/update_profile_status_by_id_request.dart';
part 'model/update_profile_social_info_by_id_request.dart';
part 'model/validate_user_request.dart';
part 'model/validate_participant_event_qr_request.dart';
part 'model/validate_participant_event_qr_response.dart';
part 'model/validate_verification_code_request.dart';
part 'model/verify_user_request.dart';

part 'model/validate_email_request.dart';
part 'model/validation_response.dart';

//final debug = bool.fromEnvironment('dart.vm.product') ? false : true;
final debug = true;
final staging = debug ? "staging." : "";

// final basePath = "https://${staging}gokomm.com";
final basePath = "http://172.19.0.2:8080";

ApiClient kommApiClient = ApiClient(

  basePath: basePath,
);

ApiClient kommApiClient_v1 = debug
  ? ApiClient(
      basePath: "${basePath}",
      apiClientDelegate: ConsoleLoggerApiDelegate()
    )
  : ApiClient(basePath: "${basePath}");

final kommChatSocketUrl = "wss://${staging}chat.gokomm.com";
