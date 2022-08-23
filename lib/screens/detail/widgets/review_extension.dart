import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/models/review.dart';
import 'package:my_course/screens/detail/widgets/sort_dropdown.dart';

class ReviewExtension extends StatelessWidget {
  const ReviewExtension({Key? key, required this.review}) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: _overallReview(review.overallScore, themeData),
        )
      ],
    );
  }

  Widget _overallReview(double score, TextTheme textTheme) {
    return Column(
      children: [
        Text(
          "Student reviews",
          style: AppTheme.getTextStyle(textTheme.subtitle1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar(
              itemSize: 24,
              allowHalfRating: true,
              initialRating: 4.3,
              ratingWidget: RatingWidget(
                empty: Icon(
                  Icons.star_border,
                  color: Colors.yellow[800],
                ),
                half: Icon(Icons.star_half, color: Colors.yellow[800]),
                full: Icon(Icons.star, color: Colors.yellow[800]),
              ),
              onRatingUpdate: (double value) {},
            ),
            const SizedBox(
              width: 5,
            ),
            Text("${review.overallScore} out of 5"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: SortDropdown(),
        ),
        const SizedBox(
          height: 15,
        ),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(review.photo, width: 50, height: 50, fit: BoxFit.fill,),
          ),
          title: Text(
            review.name,
            style: AppTheme.getTextStyle(textTheme.subtitle2),
          ),
          subtitle: Text(
            review.time,
            style: AppTheme.getTextStyle(textTheme.subtitle2),
          ),
          trailing: SizedBox(
            width: 100,
            child: Row(
              children: [
                Expanded(
                  child: Icon(Icons.star, color: Colors.yellow[800],),
                ),
                Expanded(
                  child: Text(
                    review.score.toString(),
                    style: AppTheme.getTextStyle(textTheme.subtitle1),
                  ),
                )
              ],
            )
          ),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Text(
            review.description,
            style:
                AppTheme.getTextStyle(textTheme.subtitle2, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
