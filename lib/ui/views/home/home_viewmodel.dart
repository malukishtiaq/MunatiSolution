import 'package:Munati/app/app.bottomsheets.dart';
import 'package:Munati/app/app.dialogs.dart';
import 'package:Munati/app/app.locator.dart';
import 'package:Munati/app/app.router.dart';
import 'package:Munati/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../models/models.dart';
import '../../../services/market_service.dart';

class HomeViewModel extends FutureViewModel<List<ProductModel>> {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  late final _marketService = locator<MarketService>();

  Future navigateToCartView() async {
    _navigationService.navigateToCartView();
  }

  Future navigateToProductDetailsView() async {
    _navigationService.navigateToProductDetailsView();
  }

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  Future loadProducts() async {
    ProductResponse result = await _marketService.loadProducts();
    print("testing");
  }

  Future getPurchasedProducts() async {
    ProductResponse result = await _marketService.getPurchasedProductsAsync();
    print("testing");
  }

  @override
  Future<List<ProductModel>> futureToRun() async {
    ProductResponse value = await _marketService.loadProducts();
    if (value.apiStatus == 200) {
      return value.products ?? [];
    }
    return [];
  }
}
