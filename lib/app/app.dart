import 'package:Munati/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:Munati/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:Munati/ui/views/home/home_screen.dart';
import 'package:Munati/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:Munati/ui/views/login/login_view.dart';
import 'package:Munati/ui/views/register/register_view.dart';
import 'package:Munati/services/authentication_service.dart';
import 'package:Munati/ui/views/social_login/social_login_view.dart';
import 'package:Munati/ui/views/social_registration/social_registration_view.dart';
import 'package:Munati/services/market_service.dart';
import 'package:Munati/ui/views/market/market_view.dart';
import 'package:Munati/ui/views/product_details/product_details_view.dart';
import 'package:Munati/ui/views/profile/profile_view.dart';
import 'package:Munati/ui/views/cart/cart_view.dart';
import 'package:Munati/ui/views/landing/landing_view.dart';
import 'package:Munati/ui/views/chat/chat_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: SocialLoginView),
    MaterialRoute(page: SocialRegistrationView),
    MaterialRoute(page: MarketView),
    MaterialRoute(page: ProductDetailsView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: LandingView),
    MaterialRoute(page: ChatView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: MarketService),
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
  logger: StackedLogger(),
)
class App {}
