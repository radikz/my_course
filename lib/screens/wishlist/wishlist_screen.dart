import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/screens/widgets/search_field.dart';
import 'package:my_course/screens/wishlist/widgets/wishlist_list.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    double expandHeight = MediaQuery.of(context).size.height * 0.23;

    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: NestedScrollView(
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: expandHeight,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  pinned: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  title: Container(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      'Wishlist',
                      style: AppTheme.getTextStyle(themeData.headline5,
                          color: Colors.white),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.center,
                      height: expandHeight,
                      child: const SearchField(),
                    ),
                  ),
                )
              ];
            },
            body: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: WishlistList(),
            ),
          ),
        ),
      ),
    );
  }
}
