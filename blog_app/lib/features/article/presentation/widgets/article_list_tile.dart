import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:flutter/material.dart';


class ArticleListTile extends StatelessWidget {
  final Article article;
  final VoidCallback onTap;

  const ArticleListTile({
    super.key,
    required this.article,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(16.0),
      title: Text(
        article.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8.0),
          Text(
            'Author: ${article.author}',
            style: const TextStyle(fontSize: 14.0),
          ),
          const SizedBox(height: 4.0),
          Text(
            'Date: ${article.date}',
            style: const TextStyle(fontSize: 14.0),
          ),
          const SizedBox(height: 12.0),
          Text(
            article.content,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
