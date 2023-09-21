// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:blog_app/core/core_data/entitties/user_profile.dart' as _i7;
import 'package:blog_app/features/article/data/entitites/article.dart' as _i6;
import 'package:blog_app/features/article/presentation/pages/article_page.dart'
    as _i1;
import 'package:blog_app/features/article/presentation/pages/feed_page.dart'
    as _i3;
import 'package:blog_app/features/authentication/presentation/pages/auth_page.dart'
    as _i2;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ArticleRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ArticlePage(
          key: args.key,
          article: args.article,
          currentUser: args.currentUser,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    FeedRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FeedPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ArticlePage]
class ArticleRoute extends _i4.PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({
    _i5.Key? key,
    required _i6.Article article,
    required _i7.UserProfile? currentUser,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ArticleRoute.name,
          args: ArticleRouteArgs(
            key: key,
            article: article,
            currentUser: currentUser,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleRoute';

  static const _i4.PageInfo<ArticleRouteArgs> page =
      _i4.PageInfo<ArticleRouteArgs>(name);
}

class ArticleRouteArgs {
  const ArticleRouteArgs({
    this.key,
    required this.article,
    required this.currentUser,
  });

  final _i5.Key? key;

  final _i6.Article article;

  final _i7.UserProfile? currentUser;

  @override
  String toString() {
    return 'ArticleRouteArgs{key: $key, article: $article, currentUser: $currentUser}';
  }
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeedPage]
class FeedRoute extends _i4.PageRouteInfo<void> {
  const FeedRoute({List<_i4.PageRouteInfo>? children})
      : super(
          FeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
