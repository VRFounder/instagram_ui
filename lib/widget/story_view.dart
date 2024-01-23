import 'package:flutter/material.dart';

import '../data/data.dart';
class StoryView extends StatelessWidget {
  const StoryView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.3,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 35,
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              stories[index].storyImage),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(65),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Text(stories[index].userName),
              ],
            ),
          );
        },
      ),
    );
  }
}
