import 'package:Munati/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../common/all_enums.dart';

class RegisterViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToCredentials() async {
    //_navigationService.navigateToCredentialsView();
  }

  Future navigateToSocialMediaSignup(SocialMediaTypes socialMediaType) async {
    if (socialMediaType == SocialMediaTypes.Facebook) {
      _navigationService.navigateToSocialRegistrationView(
          types: SocialMediaTypes.Facebook);
    } else if (socialMediaType == SocialMediaTypes.Google) {
      _navigationService.navigateToSocialRegistrationView(
          types: SocialMediaTypes.Google);
    } else if (socialMediaType == SocialMediaTypes.LinkedIn) {
      _navigationService.navigateToSocialRegistrationView(
          types: SocialMediaTypes.LinkedIn);
    }
  }
}
