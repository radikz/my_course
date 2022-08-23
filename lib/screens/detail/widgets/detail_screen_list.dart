import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_course/bloc/detail_tab/detail_tab_cubit.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/models/course.dart';
import 'package:my_course/screens/detail/widgets/review_extension.dart';

import 'curriculum_extension.dart';

class DetailScreenList extends StatelessWidget {
  const DetailScreenList({Key? key, required this.course, required this.themeData}) : super(key: key);

  final Course course;
  final TextTheme themeData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
      const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            course.title,
            style: AppTheme.getTextStyle(themeData.headline6),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: _authorAndScore(
                    const Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    course.author,
                    themeData,
                    color: Colors.blue),
              ),
              Expanded(
                child: _authorAndScore(
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                    course.score.toString(),
                    themeData),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              course.description,
              style: AppTheme.getTextStyle(themeData.bodyText1,
                  color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          _twoRowOneColumn(
            "Students",
            course.totalStudent,
            "Language",
            course.language,
            themeData,
          ),
          const SizedBox(
            height: 10,
          ),
          _twoRowOneColumn(
            "Last Update",
            "Feb 2, 2021",
            "Subtitle",
            course.language,
            themeData,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<DetailTabCubit, int>(
              builder: (context, state) {
                return CupertinoSlidingSegmentedControl<int>(
                  thumbColor: CupertinoColors.activeBlue,
                  groupValue: state,
                  children: {
                    0: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Curriculum",
                        style: AppTheme.getTextStyle(
                            themeData.subtitle1,
                            color: state == 0
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                    1: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text("Review",
                          style: AppTheme.getTextStyle(
                              themeData.subtitle1,
                              color: state == 1
                                  ? Colors.white
                                  : Colors.black)),
                    )
                  },
                  onValueChanged: (value) {
                    context
                        .read<DetailTabCubit>()
                        .updateTab(value!);
                  },
                );
              },
            ),
          ),
          BlocBuilder<DetailTabCubit, int>(
            builder: (context, state) {
              switch (state) {
                case 0:
                  return Column(
                    children: course.curriculum
                        .map((c) =>
                        CurriculumExtension(curriculum: c))
                        .toList(),
                  );
                default:
                  return course.review == null
                      ? const SizedBox()
                      : Column(
                    children: course.review!
                        .map((r) => ReviewExtension(
                      review: r,
                    ))
                        .toList(),
                  );
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price', style: AppTheme.getTextStyle(themeData.subtitle1),),
              Text('\$${course.amount.toStringAsFixed(0)}', style: AppTheme.getTextStyle(themeData.headline6, color: Colors.blue),)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              onPressed: () {},
              alignment: Alignment.center,
              child: Text(
                'Enroll Course Now',
                style: AppTheme.getTextStyle(themeData.subtitle2),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Theme.of(context).primaryColor)),
                  child: Text(
                    'Add to cart',
                    style: AppTheme.getTextStyle(
                        themeData.subtitle2,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Theme.of(context).primaryColor)),
                  child: Text(
                    'Add to wishlist',
                    style: AppTheme.getTextStyle(
                        themeData.subtitle2,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _twoRowOneColumn(String title1, String text1, String title2,
      String text2, TextTheme themeData) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: _twoColumn(title1, text1, themeData)),
        Expanded(child: _twoColumn(title2, text2, themeData)),
      ],
    );
  }

  Widget _twoColumn(String title, String text, TextTheme themeData) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }

  Widget _authorAndScore(Icon icon, String text, TextTheme themeData,
      {Color? color}) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 10,
        ),
        Text(text,
            style: AppTheme.getTextStyle(themeData.subtitle1, color: color))
      ],
    );
  }
}
