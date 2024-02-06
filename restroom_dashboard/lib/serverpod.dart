import 'package:restroom_client/restroom_client.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

late Client client;
late SessionManager sessionManager;

Future<void> initializeServerpodClient() async {
  const apiHost = 'http://localhost:8080/';

  client = Client(
    apiHost,
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();
}
