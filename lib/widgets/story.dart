import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class Story extends StatelessWidget {
  final String imageUrl;
  final String username;

  const Story({
    Key? key,
    required this.imageUrl,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68,
      margin: const EdgeInsets.only(left: 6, right: 12),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 68,
                height: 68,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/icon_stories.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 59,
                height: 59,
                margin: const EdgeInsets.all(4.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            username,
            style: blackTextStyle.copyWith(
              fontSize: 12,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
