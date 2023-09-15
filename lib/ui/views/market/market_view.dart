import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:unicons/unicons.dart';
import '../../common/image_helper.dart';
import 'components/appbar.dart';
import 'components/bid_widget.dart';
import 'components/category.dart';
import 'components/top_creator_widget.dart';
import 'components/video_thumbnail_widget.dart';
import 'market_viewmodel.dart';

class MarketView extends StackedView<MarketViewModel> {
  const MarketView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MarketViewModel viewModel,
    Widget? child,
  ) {
    Size size = MediaQuery.of(context).size; //check the size of device
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness ==
        Brightness.dark; //check if device is in dark or light mode
    Color defaultFontColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      appBar: buildAppBar(
        Icon(
          UniconsLine.bars,
          color: isDarkMode
              ? Colors.white
              : const Color(0xff3b22a1), //icon bg color
          size: size.height * 0.025,
        ),
        isDarkMode,
        size,
      ),
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color(0xff06090d)
                : const Color(0xfff8f8f8), //background color
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: ListView(
                children: [
                  buildCategory("Popular Bids", defaultFontColor, size),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.3,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, i) {
                        if (i == 0) {
                          return buildBid(
                            'Deer',
                            3600,
                            'Ishtiaq Ahmed',
                            avatar1,
                            nft1,
                            defaultFontColor,
                            isDarkMode,
                            size,
                          );
                        } else if (i == 1) {
                          return buildBid(
                            'Nature',
                            1500,
                            'Malick',
                            avatar2,
                            nft3,
                            defaultFontColor,
                            isDarkMode,
                            size,
                          );
                        } else {
                          return buildBid(
                            'Galaxy',
                            1250,
                            'Malick',
                            avatar2,
                            nft2,
                            defaultFontColor,
                            isDarkMode,
                            size,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // {
  //   return Scaffold(
  //     backgroundColor: Theme.of(context).colorScheme.background,
  //     body: Center(
  //       child: Container(
  //         padding: const EdgeInsets.only(left: 25.0, right: 25.0),
  //         child: FullWidthButton(
  //           onPressed: () => viewModel.loadProducts(),
  //           buttonText: ksLoadProducts,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  MarketViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MarketViewModel();
}
