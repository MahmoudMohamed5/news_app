import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/views/widget/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articlesList,
  });
  final List<ArticlesModel> articlesList;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: articlesList.length,
      itemBuilder: (context, index) => NewsItem(
        articlesModel: articlesList[index],
      ),
    );
  }
}
