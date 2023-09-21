import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_sate.freezed.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.loaded(Article article) = _Loaded;
  const factory ArticleState.editing(Article article) = _Editing;
  const factory ArticleState.error(String message) = _Error;
}
