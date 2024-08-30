
import 'package:flutter/material.dart';
import 'package:news_app/utils/app_images.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 160,
        decoration: const BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.business),
          ),
        ),
      ),
    );
  }
}
