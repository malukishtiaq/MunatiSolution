import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/size_config.dart';
import '../home_viewmodel.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends ViewModelWidget<HomeViewModel> {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              viewModel.navigateToCartView();
            },
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
