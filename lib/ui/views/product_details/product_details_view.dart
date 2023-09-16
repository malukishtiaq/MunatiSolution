import '../../../models/models.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';
import 'product_details_viewmodel.dart';

class ProductDetailsView extends StackedView<ProductDetailsViewModel> {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: demoProducts[0].rating),
      ),
      body: Body(product: demoProducts[0]),
    );
  }

  @override
  ProductDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailsViewModel();
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
