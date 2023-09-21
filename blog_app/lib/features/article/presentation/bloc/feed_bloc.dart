import 'package:bloc/bloc.dart';
import 'package:blog_app/core/core_data/entitties/user_profile.dart';
import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:blog_app/features/article/data/repositories/article_repository.dart';
import 'package:blog_app/features/article/presentation/bloc/feed_state.dart';
import 'package:blog_app/features/authentication/data/repositories/auth_repository.dart';
import 'package:blog_app/features/authentication/data/repositories/user_repository.dart';
import 'package:uuid/uuid.dart';

class FeedCubit extends Cubit<FeedState> {
  final ArticleRepository _repository;
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  FeedCubit(this._repository, this._authRepository, this._userRepository)
      : super(const FeedState.initial());

  UserProfile? currentUser;

  Future<void> loadAllArticles() async {
    final user = await _authRepository.getCurrentUser();
    currentUser = await _userRepository.getUserProfile(user!.uid);
    try {
      emit(const FeedState.loading());
      final articles = await _repository.getAllArticles();
      emit(FeedState.loaded(articles));
    } catch (e) {
      handleError(e.toString());
    }
  }

  Future<void> addArticle(String title, String content) async {
    final user = await _authRepository.getCurrentUser();
    try {
      emit(const FeedState.loading());
      final article = Article(
        title: title,
        content: content,
        id: const Uuid().v4(),
        author: user!.email!,
        authorId: user.uid,
        date: DateTime.now().toString(),
      );
      await _repository.createArticle(article);
      loadAllArticles();
    } catch (e) {
      handleError(e.toString());
    }
  }

  void handleError(String message) async {
    emit(FeedState.error(message));
  }

  UserProfile? getCurrentUser() {
    return currentUser;
  }

  Future<void> logout() async {
    await _authRepository.signOut();
  }

  void deleteArticle(String id) async {
    try {
      emit(const FeedState.loading());
      await _repository.deleteArticle(id);
      loadAllArticles();
    } catch (e) {
      handleError(e.toString());
    }
  }
}
