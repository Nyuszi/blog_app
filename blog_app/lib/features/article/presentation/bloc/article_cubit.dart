import 'package:bloc/bloc.dart';
import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:blog_app/features/article/data/repositories/article_repository.dart';
import 'package:blog_app/features/article/presentation/bloc/article_sate.dart';

class ArticleCubit extends Cubit<ArticleState> {
  final ArticleRepository _repository;

  ArticleCubit(this._repository) : super(const ArticleState.initial());

  Future<void> loadArticle(String articleId) async {
    try {
      emit(const ArticleState.loading());
      final article = await _repository.getArticleById(articleId);
      if (article != null) {
        emit(ArticleState.loaded(article));
      } else {
        handleError("Article not found");
      }
    } catch (e) {
      handleError(e.toString());
    }
  }

  void startEditing(Article article) {
    emit(ArticleState.editing(article));
  }

  Future<void> saveEditedArticle(Article editedArticle) async {
    try {
      emit(const ArticleState.loading());
      await _repository.updateArticle(editedArticle);
      emit(ArticleState.loaded(editedArticle));
    } catch (e) {
      handleError(e.toString());
    }
  }

  void handleError(String message) async {
    emit(ArticleState.error(message));
  }
}
