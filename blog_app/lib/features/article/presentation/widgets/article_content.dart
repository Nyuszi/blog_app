import 'package:blog_app/core/core_data/entitties/user_profile.dart';
import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  final Article article;
  final UserProfile? currentUser;

  const ArticleContent({
    super.key,
    required this.article,
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Author: ${article.author}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('Date: ${article.date}'),
          const SizedBox(height: 16),
          Text(
            article.content,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}