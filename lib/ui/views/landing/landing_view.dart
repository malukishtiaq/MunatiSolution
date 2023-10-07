import 'package:Munati/ui/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../bottom_nav_icons.dart';
import '../../components/custom_bottom_navigationBar.dart';
import '../chat/chat_view.dart';
import '../home/home_screen.dart';
import 'landing_viewmodel.dart';

class LandingView extends StackedView<LandingViewModel> {
  LandingView({Key? key}) : super(key: key);
  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat_outlined),
      label: 'Chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      label: 'Profile',
    ),
  ];

  @override
  Widget builder(
    BuildContext context,
    LandingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: IndexedStack(
        index: viewModel.selectedIndex,
        children: const [HomeView(), ChatView(), ProfileView()],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: viewModel.selectedIndex,
        onTap: viewModel.onItemTapped,
        items: _bottomNavBarItems,
      ),
    );
  }

  @override
  LandingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingViewModel();
}
