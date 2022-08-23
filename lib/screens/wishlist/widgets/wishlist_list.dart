import 'package:flutter/material.dart';
import 'package:my_course/models/wish_list.dart';
import 'package:my_course/screens/explore/widgets/popular_item.dart';

class WishlistList extends StatelessWidget {
  const WishlistList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wishlist = WishList().popular;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
      ),
      itemCount: wishlist.length,
      itemBuilder: (context, index) {
        return PopularItem(height: 100, width: 170, course: wishlist[index]);
      },
    );
  }
}
