import '../../../munati_apiclient/models/models.dart';
import '../../../munati_apiclient/requests/auth.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:timezone/timezone.dart' as tz;

class AuthenticationService {
  late final AuthApi _authApi;
  AuthenticationService() {
    _authApi = AuthApi();
  }

  Future<AuthResponse?> authenticateUser() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    Map<String, tz.Location> locations = tz.timeZoneDatabase.locations;

    var auth = AuthRequest(
        server_key: "658c0214ee8f17d70d696f21369680dd",
        timezone: locations.keys.first,
        username: "admin",
        password: "69miwHBwTWv1",
        android_n_device_id: androidInfo.device,
        android_m_device_id: androidInfo.device,
        device_type: "mobile");

    AuthResponse? value = await _authApi.authAsync(auth: auth);
    return value;
  }
}
