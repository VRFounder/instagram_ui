import "package:flutter/material.dart";
import 'package:feather_icons_svg/feather_icons_svg.dart';

import '../data/data.dart';
import '../models/post.dart';
import '../widget/post_view.dart';
import '../widget/story_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "instagram",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const FeatherIcon(
            FeatherIcons.camera,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FeatherIcon(
              FeatherIcons.tv,
            ),
            padding: EdgeInsets.zero,
          ),
          IconButton(
            onPressed: () {},
            icon: const FeatherIcon(FeatherIcons.send),
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Stories"),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Watch all"),
                      ),
                    ],
                  ),
                ),
                const StoryView(),
              ],
            ),
          ),
          for(Post post in posts) PostView(post: post,),
        ],
      ),
    );
  }
}
