/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class User extends _i1.SerializableEntity {
  User({required this.id});

  factory User.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return User(
        id: serializationManager.deserialize<String>(jsonSerialization['id']));
  }

  String id;

  @override
  Map<String, dynamic> toJson() {
    return {'id': id};
  }

  @override
  Map<String, dynamic> allToJson() {
    return {'id': id};
  }
}
