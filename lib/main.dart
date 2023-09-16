import 'package:flutter/material.dart';
import 'package:Munati/app/app.bottomsheets.dart';
import 'package:Munati/app/app.dialogs.dart';
import 'package:Munati/app/app.locator.dart';
import 'package:Munati/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'ui/common/size_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
