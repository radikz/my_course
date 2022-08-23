import 'package:flutter/material.dart';
import 'package:my_course/models/coding_course.dart';
import 'package:my_course/screens/explore/widgets/popular_item.dart';

class CodingList extends StatelessWidget {
  const CodingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final coding = CodingCourse().coding;

    return ListView.separated(
      itemCount: coding.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return PopularItem(
          height: 100,
          width: 150,
          course: coding[index],
        );
      },
      separatorBuilder: (ctx, _){
        return const SizedBox(width: 10,);
      },
    );
  }
}