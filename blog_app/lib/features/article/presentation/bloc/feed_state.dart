import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.loading() = _Loading;
  const factory FeedState.loaded(List<Article> articles) = _Loaded;
  const factory FeedState.error(String message) = _Error;
}
