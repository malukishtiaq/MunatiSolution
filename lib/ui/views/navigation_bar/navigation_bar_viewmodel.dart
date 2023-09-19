import 'package:Munati/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class NavigationBarViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToProfileView() async {
    _navigationService.navigateToProfileView();
  }

  Future navigateToHomeView() async {
    _navigationService.navigateToHomeView();
  }

  void handleNavigation(int index) {
    setIndex(index);
    switch (index) {
      case 0:
        _navigationService.navigateToHomeView();
        break;
      case 1:
        _navigationService.navigateToMarketView();
        break;
      case 2:
        _navigationService.navigateToProfileView();
        break;
      default:
    }
  }
}
