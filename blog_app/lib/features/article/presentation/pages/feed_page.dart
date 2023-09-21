import 'package:auto_route/auto_route.dart';
import 'package:blog_app/core/routing/router.gr.dart';
import 'package:blog_app/features/article/presentation/bloc/feed_bloc.dart';
import 'package:blog_app/features/article/presentation/bloc/feed_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blog_app/features/article/presentation/widgets/article_list_tile.dart';

@RoutePage()
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<FeedCubit>().logout();
              AutoRouter.of(context).replaceAll([const AuthRoute()]);
            },
          ),
        ],
      ),
      body: BlocBuilder<FeedCubit, FeedState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () {
              context.read<FeedCubit>().loadAllArticles();
              return const Center(child: CircularProgressIndicator());
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (articles) {
              return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];
                  final userProfile =
                      context.read<FeedCubit>().getCurrentUser();
                  return ArticleListTile(
                    article: article,
                    onTap: () {
                      AutoRouter.of(context).navigate(ArticleRoute(
                          article: article, currentUser: userProfile));
                    },
                  );
                },
              );
            },
            error: (message) => Center(
              child: Text(
                'Error: $message',
                style: TextStyle(color: Colors.red),
              ),
            ),
            orElse: () => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddArticleDialog(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddArticleDialog(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController contentController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Article'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: contentController,
                decoration: const InputDecoration(labelText: 'Content'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final content = contentController.text;
                if (title.isNotEmpty && content.isNotEmpty) {
                  context.read<FeedCubit>().addArticle(title, content);

                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
