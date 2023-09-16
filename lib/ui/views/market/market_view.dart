import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/common/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';
import '../../common/enums.dart';
import 'market_viewmodel.dart';

import '../home/components/body.dart';

class MarketView extends StackedView<MarketViewModel> {
  const MarketView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MarketViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  @override
  MarketViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MarketViewModel();
}
