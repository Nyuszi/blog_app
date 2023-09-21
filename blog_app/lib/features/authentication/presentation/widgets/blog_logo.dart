import 'package:flutter/material.dart';

class BlogLogo extends StatelessWidget {
  const BlogLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor, // Background color
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.article, // You can use a suitable icon here
            color: Colors.white,
            size: 36.0,
          ),
          SizedBox(width: 10.0),
          Text(
            'MyBlog',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontFamily: 'Pacifico', // Use a custom font if desired
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
