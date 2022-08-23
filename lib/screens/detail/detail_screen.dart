import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/models/course.dart';
import 'package:my_course/screens/detail/widgets/detail_screen_list.dart';
import 'package:my_course/screens/detail/widgets/image_blur.dart';
import 'package:my_course/screens/detail/widgets/sliver_header_delegate.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  static const routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context)!.settings.arguments as Course;
    final themeData = Theme.of(context).textTheme;

    const double expandedHeight = 400;
    const double roundedContainerHeight = 50;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  delegate: SliverHeaderDelegate(
                    expandedHeight,
                    course.image,
                    roundedContainerHeight,
                    themeData,
                  ),
                ),
                SliverToBoxAdapter(
                  child: DetailScreenList(course: course, themeData: themeData),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const ImageBlur(
                        child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                  ),
                  ImageBlur(
                      child: Badge(
                    badgeContent: const Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 1,
                    ),
                    child: const Icon(Icons.shopping_cart, color: Colors.white),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _twoColumn(String title, String text, TextTheme themeData) {
    return Column(
      children: [
        Text(
          title,
          style: AppTheme.getTextStyle(themeData.subtitle1, color: Colors.grey),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(text, style: AppTheme.getTextStyle(themeData.subtitle1))
      ],
    );
  }
}
