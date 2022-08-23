import 'package:flutter/material.dart';
import 'package:my_course/models/popular_course.dart';
import 'package:my_course/screens/explore/widgets/popular_item.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popular = PopularCourse().popular;

    return ListView.separated(
      itemCount: popular.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return PopularItem(
          height: 140,
          width: 220,
          course: popular[index],
        );
      },
      separatorBuilder: (ctx, _){
        return const SizedBox(width: 10,);
      },
    );
  }
}
