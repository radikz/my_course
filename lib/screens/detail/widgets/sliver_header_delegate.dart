import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/screens/detail/widgets/image_blur.dart';

class SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  SliverHeaderDelegate(this.expandedHeight, this.image,
      this.roundedContainerHeight, this.textTheme);

  final double expandedHeight;
  final String image;
  final double roundedContainerHeight;
  final TextTheme textTheme;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: image,
            child: Image.asset(
              image,
              color: Colors.black54,
              colorBlendMode: BlendMode.darken,
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: expandedHeight - roundedContainerHeight - shrinkOffset,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: roundedContainerHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            top: expandedHeight -
                roundedContainerHeight -
                expandedHeight / 2 -
                shrinkOffset,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: ImageBlur(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.play_arrow),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Course Preview",
                      style: AppTheme.getTextStyle(textTheme.subtitle1,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
