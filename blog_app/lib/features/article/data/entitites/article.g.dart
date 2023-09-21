// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      id: json['id'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      authorId: json['authorId'] as String,
      date: json['date'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'authorId': instance.authorId,
      'date': instance.date,
      'content': instance.content,
    };
