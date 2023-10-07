import 'package:flutter/material.dart';
import '../common/common_files.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<BottomNavigationBarItem> items;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //background color
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF0572D2).withOpacity(0.8),
            border: Border.all(color: Colors.white),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: const EdgeInsets.only(top: 25.0),
        child: Stack(
          children: [
            BottomNavigationBar(
              backgroundColor: Color(0xFF0572D2),
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              unselectedItemColor: kcLightGrey,
              onTap: onTap,
              items: items,
              selectedItemColor: Colors.white,
            ),
            Positioned(
              // Position the white line above the selected item
              left: (MediaQuery.of(context).size.width / items.length) *
                  currentIndex,

              width: MediaQuery.of(context).size.width / items.length,
              height: 2.0,
              child: Container(
                color: Colors.white, // White line color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
