import 'dart:ffi';

import 'package:Munati/app/app.router.dart';
import 'package:Munati/models/auth_model.dart';
import 'package:Munati/ui/views/login/login_view.form.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.logger.dart';
import '../../../services/authentication_service.dart';
import '../../common/all_enums.dart';

class LoginViewModel extends FormViewModel {
  late final _navigationService = locator<NavigationService>();
  late final _authenticationService = locator<AuthenticationService>();
  final log = getLogger('FormViewModel');

  Future navigateToRegisterView() async {
    _navigationService.navigateToRegisterView();
  }

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');

    if (hasPasswordValidationMessage) {
      setValidationMessage('Error in the form, please check again');
    }
  }

  Future navigateToLandingView() async {
    AuthResponse? result =
        await runBusyFuture(_authenticationService.authenticateUser());
    if (result?.access_token != null && result?.access_token != "") {
      _navigationService.navigateToLandingView();
    } else {}
  }

  Future authenticateUser() async {
    var result = await _authenticationService.authenticateUser();
    _navigationService.navigateToMarketView();
  }

  Future navigateToSocialLogin(SocialMediaTypes socialMediaType) async {
    if (socialMediaType == SocialMediaTypes.Facebook) {
      _navigationService.navigateToSocialLoginView(
          types: SocialMediaTypes.Facebook);
    } else if (socialMediaType == SocialMediaTypes.Google) {
      try {
        await Firebase.initializeApp();
      } catch (e) {
        print('');
      }
      _navigationService.navigateToSocialLoginView(
          types: SocialMediaTypes.Google);
    } else if (socialMediaType == SocialMediaTypes.LinkedIn) {
      await Firebase.initializeApp();
      _navigationService.navigateToSocialLoginView(
          types: SocialMediaTypes.LinkedIn);
    }
  }
}
