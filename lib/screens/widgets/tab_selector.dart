import 'package:flutter/material.dart';
import 'package:my_course/models/app_tab.dart';

class TabSelector extends StatelessWidget {
  const TabSelector({Key? key, required this.tab, required this.onSelectedTab})
      : super(key: key);

  final AppTab tab;
  final Function(AppTab) onSelectedTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: AppTab.values.indexOf(tab),
      onTap: (index) => onSelectedTab(AppTab.values[index]),
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: AppTab.values
          .map((_tab) =>
              BottomNavigationBarItem(label: _label(_tab), icon: _icon(_tab)))
          .toList(),
    );
  }

  String _label(AppTab tab) {
    switch (tab) {
      case AppTab.explore:
        return "Explore";
      case AppTab.myCourse:
        return "My Course";
      case AppTab.wishList:
        return "Wishlist";
      default:
        return "Account";
    }
  }

  Icon _icon(AppTab tab) {
    switch (tab) {
      case AppTab.explore:
        return const Icon(Icons.explore_outlined);
      case AppTab.myCourse:
        return const Icon(Icons.play_circle_outline);
      case AppTab.wishList:
        return const Icon(Icons.favorite);
      default:
        return const Icon(Icons.person_outline);
    }
  }
}
