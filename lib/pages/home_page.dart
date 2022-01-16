import 'package:flutter/material.dart';
import 'package:instagram_clone/theme.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.5),
          child: Container(
            color: const Color(0xffDADADA),
            height: 0.5,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_logo.png',
            ),
            iconSize: 104,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_add.png',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_heart.png',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icon_messenger.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xffDADADA),
              width: 0.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: kWhiteColor,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_home.png',
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_search.png',
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_reels.png',
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_shop.png',
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_profile.png',
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Story(
                  imageUrl: 'assets/image_profile.png',
                  username: 'Your Story',
                ),
                Story(
                  imageUrl: 'assets/image_profile_jisoo.png',
                  username: 'sooyaaa__',
                ),
                Story(
                  imageUrl: 'assets/image_profile_jennie.png',
                  username: 'jennierubyjane',
                ),
                Story(
                  imageUrl: 'assets/image_profile_rose.png',
                  username: 'roses_are_rosie',
                ),
                Story(
                  imageUrl: 'assets/image_profile_lisa.png',
                  username: 'lalalalisa_m',
                ),
              ],
            ),
          ),
          Column(
            children: const [
              Post(
                imageProfile: 'assets/image_profile_jisoo.png',
                imagePost: 'assets/image_post_jisoo.png',
                username: 'sooyaaa__',
              ),
              Post(
                imageProfile: 'assets/image_profile_jennie.png',
                imagePost: 'assets/image_post_jennie.png',
                username: 'jennierubyjane',
              ),
              Post(
                imageProfile: 'assets/image_profile_rose.png',
                imagePost: 'assets/image_post_rose.png',
                username: 'roses_are_rosie',
              ),
              Post(
                imageProfile: 'assets/image_profile_lisa.png',
                imagePost: 'assets/image_post_lisa.png',
                username: 'lalalalisa_m',
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
