import 'package:flutter/material.dart';
import 'package:my_course/models/app_theme.dart';
import 'package:my_course/screens/explore/widgets/rounded_widget.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.image,
    required this.score,
    required this.themeData,
    required this.height,
    required this.width,
    required this.isFavorite,
  }) : super(key: key);

  final String image;
  final double score;
  final ThemeData themeData;
  final double height;
  final double width;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            image,
            alignment: Alignment.centerLeft,
            width: width,
            height: height,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: RoundedWidget(
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text(
                  score.toString(),
                  style: AppTheme.getTextStyle(themeData.textTheme.subtitle2),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: RoundedWidget(
            child: Icon(
              Icons.favorite,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
