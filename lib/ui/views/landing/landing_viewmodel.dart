import 'package:stacked/stacked.dart';

class LandingViewModel extends IndexTrackingViewModel {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners(); // Notify listeners to trigger a rebuild with the updated index
  }
}
