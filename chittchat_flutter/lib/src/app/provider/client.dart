import 'package:chittchat_client/chittchat_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

final clientHostProvider = Provider((ref) => 'http://localhost:8080/');

final clientProvider = Provider(
  (ref) => Client(ref.watch(clientHostProvider))
    ..connectivityMonitor = FlutterConnectivityMonitor(),
);
