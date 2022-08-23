import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/screens/explore/widgets/category_list.dart';
import 'package:my_course/screens/explore/widgets/coding_list.dart';
import 'package:my_course/screens/explore/widgets/design_list.dart';
import 'package:my_course/screens/explore/widgets/marketing_list.dart';
import 'package:my_course/screens/explore/widgets/notification_sheet.dart';
import 'package:my_course/screens/explore/widgets/popular_list.dart';
import 'package:my_course/screens/explore/widgets/rounded_widget.dart';
import 'package:my_course/screens/explore/widgets/title_topic.dart';
import 'package:my_course/screens/widgets/search_field.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    double expandHeight = MediaQuery.of(context).size.height * 0.25;
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
                  child: _appBar(themeData, context),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    alignment: Alignment.center,
                    height: expandHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 48, 16, 0),
                          child: Text(
                            "Let's start learning",
                            style:
                                AppTheme.getTextStyle(themeData.textTheme.headline6, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                          child: SearchField(),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TitleTopic(title: "Popular Course", themeData: themeData),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 230, child: PopularList()),
                const SizedBox(
                  height: 20,
                ),
                TitleTopic(
                  title: "Categories",
                  themeData: themeData,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 150,
                  child: CategoryList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                TitleTopic(
                  title: "My Design",
                  themeData: themeData,
                  labelName: "Design",
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 230, child: DesignList()),
                const SizedBox(
                  height: 20,
                ),
                TitleTopic(
                  title: "My Coding",
                  themeData: themeData,
                  labelName: "Coding",
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 230, child: CodingList()),
                const SizedBox(
                  height: 20,
                ),
                TitleTopic(
                  title: "My Marketing",
                  themeData: themeData,
                  labelName: "Marketing",
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 230, child: MarketingList()),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget _appBar(ThemeData themeData, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_greeting(themeData), _menu(context)],
    );
  }

  Widget _greeting(ThemeData themeData) {
    return Text(
      "Hi, Dimas",
      style: AppTheme.getTextStyle(themeData.textTheme.headline5,
          fontWeight: FontWeight.w500),
    );
  }

  Widget _menu(BuildContext context) {
    return Row(
      children: [
        RoundedWidget(
          child: Badge(
            badgeContent: const Icon(Icons.circle, color: Colors.red, size: 1,),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
          ),
          color: Colors.blue[800],
        ),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () => _showModalBottomSheet(context),
          child: RoundedWidget(
            child: Badge(
              badgeContent: const Icon(Icons.circle, color: Colors.red, size: 1,),
              child: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
            color: Colors.blue[800],
          ),
        ),
      ],
    );
  }

  _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
      ),
      builder: (context) {
        return const NotificationSheet();
      },
    );
  }
}
