import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news/constants.dart';
import 'package:news/models/Blog.dart';
import 'package:news/responsive.dart';

import 'components/blog_post.dart';
import 'components/categories.dart';
import 'components/recent_posts.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children:[ Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            
            child: Column(
              
              children: List.generate(


                
                   blogPosts.length,
                (index) => BlogPostCard(blog: blogPosts[index]),
              ),
            ),
          ),
          if (!Responsive.isMobile(context)) SizedBox(width: kDefaultPadding),
          // Sidebar
          if (!Responsive.isMobile(context))
            Expanded(
              child: Column(
                children: [
                  // Search(),
                  // SizedBox(height: kDefaultPadding),
                  Categories(),
                  SizedBox(height: kDefaultPadding),
                  RecentPosts(),
                ],
              ),
            ),
        ],
      ),],
    );
  }
}
