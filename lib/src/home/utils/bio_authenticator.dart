import 'package:local_auth/local_auth.dart';

class BioAuthenticator {
  bool get isAuthenticated => false;

  static final LocalAuthentication auth = LocalAuthentication();
  void initalize() {}

  static Future<bool> authenticate() async {
    try {
      final isAuthenticated = await auth.authenticate(
        localizedReason: 'Scan your fingerprint to authenticate',
        options: const AuthenticationOptions(),
      );
      return isAuthenticated;
    } catch (e) {
      return false;
    }
  }
}
