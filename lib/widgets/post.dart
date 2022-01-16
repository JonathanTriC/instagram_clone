import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';

class Post extends StatelessWidget {
  final String imageProfile;
  final String imagePost;
  final String username;
  const Post({
    Key? key,
    required this.imageProfile,
    required this.imagePost,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      imageProfile,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  username,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                width: 14,
                height: 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_more.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 375,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imagePost,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(
                  right: 14,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_heart.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(
                  right: 14,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_comment.png',
                    ),
                  ),
                ),
              ),
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(
                  right: 14,
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_share.png',
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_bookmark.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '7,123,456 Likes',
                style: blackTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    username,
                    style: blackTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Hallo Blink! ❤️',
                    style: blackTextStyle.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.only(
                      right: 10,
                      top: 10,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profile.png',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Add comment...',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/emoji_love.png',
                    width: 26,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    'assets/emoji_cry.png',
                    width: 26,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icon_add_comment.png',
                    fit: BoxFit.cover,
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
