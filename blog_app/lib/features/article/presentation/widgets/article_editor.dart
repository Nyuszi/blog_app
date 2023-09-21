import 'package:blog_app/features/article/data/entitites/article.dart';
import 'package:flutter/material.dart';

class ArticleEditor extends StatefulWidget {
  final Article article;
  final Function(Article editedArticle) onSave;

  const ArticleEditor({
    super.key,
    required this.article,
    required this.onSave,
  });

  @override
  _ArticleEditorState createState() => _ArticleEditorState();
}

class _ArticleEditorState extends State<ArticleEditor> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.article.title);
    _contentController = TextEditingController(text: widget.article.content);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _contentController,
            decoration: InputDecoration(labelText: 'Content'),
            maxLines: null,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final editedArticle = widget.article.copyWith(
                title: _titleController.text,
                content: _contentController.text,
              );
              widget.onSave(editedArticle);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}