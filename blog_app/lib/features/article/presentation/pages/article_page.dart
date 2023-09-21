import 'package:auto_route/auto_route.dart';
import 'package:blog_app/core/core_data/entitties/user_profile.dart';
import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:blog_app/features/article/presentation/bloc/article_cubit.dart';
import 'package:blog_app/features/article/presentation/bloc/article_sate.dart';
import 'package:blog_app/features/article/presentation/bloc/feed_bloc.dart';
import 'package:blog_app/features/article/presentation/widgets/article_content.dart';
import 'package:blog_app/features/article/presentation/widgets/article_editor.dart';
import 'package:blog_app/features/authentication/presentation/bloc/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ArticlePage extends StatelessWidget {
  final Article article;
  final UserProfile? currentUser;

  const ArticlePage({
    super.key,
    required this.article,
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.read<FeedCubit>().loadAllArticles();
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              context.read<FeedCubit>().deleteArticle(article.id);
              Navigator.pop(context);
            },
          ),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (authContext, authState) {
              if (currentUser?.id == article.authorId ||
                  currentUser?.isAdmin == true) {
                return IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    context.read<ArticleCubit>().startEditing(article);
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: BlocBuilder<ArticleCubit, ArticleState>(
        builder: (articleContext, articleState) {
          return articleState.when(
            initial: () {
              context.read<ArticleCubit>().loadArticle(article.id);
              return const Center(child: CircularProgressIndicator());
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (article) => ArticleContent(
              article: article,
              currentUser: currentUser,
            ),
            editing: (article) {
              if (currentUser?.id == article.authorId ||
                  currentUser?.isAdmin == true) {
                return ArticleEditor(
                  article: article,
                  onSave: (editedArticle) {
                    context
                        .read<ArticleCubit>()
                        .saveEditedArticle(editedArticle);
                  },
                );
              } else {
                return ArticleContent(
                  article: article,
                  currentUser: currentUser,
                );
              }
            },
            error: (message) => Center(child: Text('Error: $message')),
          );
        },
      ),
    );
  }
}
