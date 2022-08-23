import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_course/bloc/tab/tab_cubit.dart';
import 'package:my_course/models/app_tab.dart';
import 'package:my_course/screens/account/account_screen.dart';
import 'package:my_course/screens/explore/explore_screen.dart';
import 'package:my_course/screens/my_course/my_course_screen.dart';
import 'package:my_course/screens/widgets/tab_selector.dart';
import 'package:my_course/screens/wishlist/wishlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, AppTab>(
      builder: (context, tab) {
        return Scaffold(
          body: _bodyScaffold(tab),
          bottomNavigationBar: TabSelector(
            tab: tab,
            onSelectedTab: (_tab) => context.read<TabCubit>().updateTab(_tab),
          ),
        );
      },
    );
  }

  _bodyScaffold(AppTab tab) {
    switch (tab) {
      case AppTab.explore:
        return const ExploreScreen();
      case AppTab.myCourse:
        return const MyCourseScreen();
      case AppTab.wishList:
        return const WishlistScreen();
      default:
        return const AccountScreen();
    }
  }
}
