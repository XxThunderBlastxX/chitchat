/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Message extends _i1.SerializableEntity {
  Message({
    required this.message,
    required this.senderId,
  });

  factory Message.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Message(
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
      senderId: serializationManager
          .deserialize<String>(jsonSerialization['senderId']),
    );
  }

  String message;

  String senderId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'senderId': senderId,
    };
  }
}
