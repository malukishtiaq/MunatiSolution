import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'navigation_bar_viewmodel.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({Key? key}) : super(key: key);

  @override
  NavigationBarViewState createState() => NavigationBarViewState();
}

//class CustomBottomNavBarState extends State<CustomBottomNavBar> {
class NavigationBarViewState extends State<NavigationBarView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavigationBarViewModel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        body: ExtendedNavigator(
          navigatorKey: StackedService.nestedNavigationKey(1),
          initialRoute: "",
          //router: BottomNavExampleRouter(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 6,
          backgroundColor: Colors.white,
          currentIndex: viewModel.currentIndex,
          onTap: viewModel.handleNavigation,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
                onPressed: () {
                  print('object');
                },
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
                onPressed: () {
                  print('object');
                },
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                onPressed: () {
                  print('object');
                },
              ),
              label: 'Chat',
            ),
          ],
        ),
      ),
      viewModelBuilder: () => NavigationBarViewModel(),
    );
  }

  @override
  NavigationBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationBarViewModel();
}
