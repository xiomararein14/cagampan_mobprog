import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String? imagePath;

  const PostImage({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    if (imagePath == null || imagePath!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Image.asset(
      imagePath!,
      width: double.infinity,
      height: 320,
      fit: BoxFit.cover,
      alignment: Alignment.center,
    );
  }
}
