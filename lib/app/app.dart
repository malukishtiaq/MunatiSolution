import 'package:Munati/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:Munati/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:Munati/ui/views/home/home_view.dart';
import 'package:Munati/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:Munati/ui/views/login/login_view.dart';
import 'package:Munati/ui/views/register/register_view.dart';
import 'package:Munati/services/authentication_service.dart';
import 'package:Munati/ui/views/social_login/social_login_view.dart';
import 'package:Munati/ui/views/social_registration/social_registration_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: SocialLoginView),
    MaterialRoute(page: SocialRegistrationView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
