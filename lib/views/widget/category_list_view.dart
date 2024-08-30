import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/utils/app_images.dart';
import 'package:news_app/views/widget/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categoryList = const [
    CategoryModel(
      title: 'General',
      image: AppImages.general,
    ),
    CategoryModel(
      title: 'Business',
      image: AppImages.business,
    ),
    CategoryModel(
      title: 'Entertainment',
      image: AppImages.entertainment,
    ),
    CategoryModel(
      title: 'Health',
      image: AppImages.health,
    ),
    CategoryModel(
      title: 'Science',
      image: AppImages.science,
    ),
    CategoryModel(
      title: 'Sports',
      image: AppImages.sports,
    ),
    CategoryModel(
      title: 'Technology',
      image: AppImages.technology,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) => Category(
            categoryModel: categoryList[index],
          ),
        ),
      ),
    );
  }
}
