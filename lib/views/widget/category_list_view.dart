
import 'package:flutter/material.dart';
import 'package:news_app/utils/app_images.dart';
import 'package:news_app/views/widget/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Category(),
        ),
      ),
    );
  }
}
