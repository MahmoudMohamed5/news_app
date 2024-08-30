import 'package:flutter/material.dart';
import 'package:news_app/views/widget/category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffDAB983),
              ),
            ),
          ],
        ),
      ),
      body: const CustomScrollView(
        slivers: [CategoryListView()],
      ),
    );
  }
}
