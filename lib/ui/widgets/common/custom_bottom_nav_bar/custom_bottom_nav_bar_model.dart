import 'package:Munati/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class CustomBottomNavBarModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future navigateToProfileView() async {
    _navigationService.navigateToProfileView();
  }

  Future navigateToHomeView() async {
    _navigationService.navigateToHomeView();
  }
}
