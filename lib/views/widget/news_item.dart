import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            
            imageUrl:
                'https://static01.nyt.com/images/2024/08/29/multimedia/29mideast-briefing-carousel-wgzl/29mideast-briefing-carousel-wgzl-threeByTwoMediumAt2X.jpg?quality=75&auto=webp',
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          ' Title TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
            fontSize: 18,
            height: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Description',
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
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
