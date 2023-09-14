import 'package:Munati/munati_apiclient/models/auth_model.dart';
import 'package:Munati/munati_apiclient/models/product_model.dart';
import 'package:Munati/services/market_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class MarketViewModel extends BaseViewModel {
  late final _navigationService = locator<NavigationService>();
  late final _marketService = locator<MarketService>();

  Future loadProducts() async {
    ProductResponse result = await _marketService.loadProducts();
    print("testing");
  }

  Future getPurchasedProducts() async {
    ProductResponse result = await _marketService.getPurchasedProductsAsync();
    print("testing");
  }
}
