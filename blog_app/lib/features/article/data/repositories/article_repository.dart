import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleRepository {
  final FirebaseFirestore _firestore;

  ArticleRepository(this._firestore);

  Future<List<Article>> getAllArticles() async {
    try {
      final QuerySnapshot querySnapshot =
          await _firestore.collection("articles").get();
      return querySnapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Article.fromJson(data);
      }).toList();
    } catch (e) {
      throw Exception('Failed to load articles: $e');
    }
  }

  Future<Article?> getArticleById(String articleId) async {
    try {
      final QuerySnapshot querySnapshot = await _firestore
          .collection("articles")
          .where("id", isEqualTo: articleId)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final data = querySnapshot.docs.first.data() as Map<String, dynamic>;
        return Article.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('Failed to load article: $e');
    }
  }

  Future<Article> createArticle(Article article) async {
    try {
      final newArticleRef =
          await _firestore.collection("articles").add(article.toJson());
      final newArticle = article.copyWith(id: newArticleRef.id);
      return newArticle;
    } catch (e) {
      throw Exception('Failed to create article: $e');
    }
  }

  Future<void> updateArticle(Article article) async {
    try {
      final QuerySnapshot querySnapshot = await _firestore
          .collection("articles")
          .where("id", isEqualTo: article.id)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final documentId = querySnapshot.docs.first.id;
        await _firestore
            .collection("articles")
            .doc(documentId)
            .update(article.toJson());
      } else {
        throw Exception('Article not found');
      }
    } catch (e) {
      throw Exception('Failed to update article: $e');
    }
  }

  Future<void> deleteArticle(String articleId) async {
    try {
      final QuerySnapshot querySnapshot = await _firestore
          .collection("articles")
          .where("id", isEqualTo: articleId)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        final documentId = querySnapshot.docs.first.id;
        await _firestore.collection("articles").doc(documentId).delete();
      } else {
        throw Exception('Article not found');
      }
    } catch (e) {
      throw Exception('Failed to delete article: $e');
    }
  }
}
