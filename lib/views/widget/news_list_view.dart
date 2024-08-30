import 'package:flutter/material.dart';
import 'package:news_app/views/widget/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // itemCount: 3,
      itemCount: 10,
      itemBuilder: (context, index) => const NewsItem(),
    );
  }
}
