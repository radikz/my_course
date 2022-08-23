import 'dart:ui';

import 'package:flutter/material.dart';

class ImageBlur extends StatelessWidget {
  const ImageBlur({Key? key, this.width, this.height, required this.child}) : super(key: key);

  final double? height;
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.1),
          ),
          padding: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}
