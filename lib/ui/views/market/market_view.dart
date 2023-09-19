import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
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
    );
  }

  @override
  MarketViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MarketViewModel();
}
