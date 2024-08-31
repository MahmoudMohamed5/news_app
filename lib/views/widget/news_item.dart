import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.articlesModel,
  });
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: articlesModel.urlToImage ?? '',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          articlesModel.title ?? '',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(
            fontSize: 18,
            height: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          articlesModel.description ?? '',
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            height: 1.5,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
