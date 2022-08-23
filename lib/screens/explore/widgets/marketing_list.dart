import 'package:flutter/material.dart';
import 'package:my_course/models/marketing_course.dart';
import 'package:my_course/screens/explore/widgets/popular_item.dart';

class MarketingList extends StatelessWidget {
  const MarketingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final marketing = MarketingCourse().marketing;

    return ListView.separated(
      itemCount: marketing.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return PopularItem(
          height: 100,
          width: 150,
          course: marketing[index],
        );
      },
      separatorBuilder: (ctx, _){
        return const SizedBox(width: 10,);
      },
    );
  }
}
