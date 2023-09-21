import 'package:blog_app/features/article/data/repositories/article_repository.dart';
import 'package:blog_app/features/article/presentation/bloc/article_cubit.dart';
import 'package:blog_app/features/article/presentation/bloc/feed_bloc.dart';
import 'package:blog_app/features/authentication/data/repositories/auth_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/data/repositories/user_repository.dart';
import '../../features/authentication/presentation/bloc/auth_cubit.dart';

class GlobalCubits {
  static List<BlocProvider<dynamic>> getCubits() {
    final firebaseAuth = FirebaseAuth.instance;
    final firebaseFirestore = FirebaseFirestore.instance;

    final authRepository = AuthRepository(firebaseAuth);
    final userRepository = UserRepository(firebaseFirestore);
    final articleRepository = ArticleRepository(firebaseFirestore);
    return [
      BlocProvider<AuthCubit>(
          create: (_) => AuthCubit(authRepository, userRepository)),
      BlocProvider<FeedCubit>(
          create: (_) =>
              FeedCubit(articleRepository, authRepository, userRepository)),
      BlocProvider<ArticleCubit>(
          create: (_) => ArticleCubit(articleRepository)),
    ];
  }
}
