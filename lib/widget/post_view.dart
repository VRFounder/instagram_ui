import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/post.dart';

class PostView extends StatelessWidget {
  const PostView({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post.userImage),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(post.userName),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        FadeInImage(
            image: AssetImage(post.postImage),
            fit: BoxFit.fitWidth,
            placeholder: const AssetImage("assets/images/placeholder.png"),
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset(
                  'assets/images/placeholder.png');
            }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.heart),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.comment),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const FeatherIcon(FeatherIcons.send),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.bookmark),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: RichText(
            text: TextSpan(
                text: "Liked by ",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.normal),
                children: <TextSpan>[
                  for (String str in post.lastLikes)
                    TextSpan(
                      text: "$str, ",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  const TextSpan(
                    text: "and ",
                  ),
                  TextSpan(
                    text: "${post.likesCount} others",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                post.userName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                post.postText,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Text(post.postDate),
        ),
      ],
    );
  }
}
