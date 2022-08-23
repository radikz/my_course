import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_course/bloc/my_course_tab/my_course_tab_cubit.dart';
import 'package:my_course/bloc/my_course_tab/my_course_tab_cubit.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/screens/my_course/widgets/my_course_list.dart';
import 'package:my_course/screens/widgets/search_field.dart';
import 'package:provider/provider.dart';

class MyCourseScreen extends StatelessWidget {
  const MyCourseScreen({Key? key}) : super(key: key);

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
                      'My Course',
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
            body: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  BlocBuilder<MyCourseTabCubit, int>(
                    builder: (context, state) {
                      return CupertinoSlidingSegmentedControl<int>(
                        thumbColor: CupertinoColors.activeBlue,
                        groupValue: state,
                        children: {
                          0: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "Ongoing",
                              style: AppTheme.getTextStyle(themeData.subtitle1,
                                  color: state == 0 ? Colors.white : Colors.black),
                            ),
                          ),
                          1: Container(
                            padding: const EdgeInsets.all(8),
                            child: Text("Completed",
                                style: AppTheme.getTextStyle(themeData.subtitle1,
                                    color:
                                        state == 1 ? Colors.white : Colors.black)),
                          )
                        },
                        onValueChanged: (value) {
                          context.read<MyCourseTabCubit>().updateTab(value!);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 30,),
                  const MyCourseList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
