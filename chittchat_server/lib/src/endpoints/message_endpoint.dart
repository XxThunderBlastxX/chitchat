import 'package:serverpod/serverpod.dart';

import '../generated/message.dart';

class MessageEndpoint extends Endpoint {
  static const String _defaultChannel = 'default';

  @override
  Future<void> streamOpened(StreamingSession session) async {
    session.messages.addListener(
      session.queryParameters['channel'] ?? _defaultChannel,
          (message) {
        sendStreamMessage(session, message);
      },
    );
  }

  @override
  Future<void> handleStreamMessage(StreamingSession session,
      SerializableEntity message,) async {
    if (message is Message) {
      session.messages.postMessage(
        session.queryParameters['channel'] ?? _defaultChannel,
        message,
      );
    }
  }
}
