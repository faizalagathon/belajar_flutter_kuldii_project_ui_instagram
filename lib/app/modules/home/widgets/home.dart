// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        // Custom Appbar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(fontSize: 28, fontFamily: 'InstagramLogo'),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 24,
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite_border_rounded,
                    size: 28,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.message_outlined,
                    size: 28,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Stories
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://picsum.photos/536/354'),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text('Username'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    IconProfileStory(
                      size: 60,
                    ),
                    Text('Username'),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Posts
        WidgetPost(),
        WidgetPost(),
        WidgetPost(),
        WidgetPost(),
        WidgetPost(),
      ],
    );
  }
}

class WidgetPost extends StatelessWidget {
  const WidgetPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ANCHOR Post Profile
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: IconProfileStory(
                      size: 40,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Username'),
                    ],
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.menu))
            ],
          ),

          // ANCHOR Posts Carousel
          // TODO Buat Carousel
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Stack(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  child: Row(
                    children: [
                      Container(
                        width: 400,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/id/100/500/500'),
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/id/345879/500/500'),
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage('https://picsum.photos/500/500'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.amber,
                  // child: ,
                ),
              ],
            ),
          ),

          // ANCHOR Post Actions
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselStep(
                      size: 6,
                      isActive: false,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CarouselStep(
                      size: 6,
                      isActive: true,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    CarouselStep(
                      size: 6,
                      isActive: false,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 28,
                        icon: Icon(Icons.favorite_border_rounded),
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 28,
                        icon: Icon(Icons.chat_bubble_outline_rounded),
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 28,
                        icon: Icon(Icons.send_rounded),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 28,
                    icon: Icon(Icons.bookmark_border_rounded),
                  ),
                ],
              ),
            ],
          ),

          // SECTION Post Likes & Caption & Text for View Comments
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ANCHOR Post Likes
                Text(
                  '579 likes',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),

                // ANCHOR Username & Caption
                Text.rich(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    text: 'Username',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      // TODO Gimana caranya overflow '...more'
                      TextSpan(
                        text: ' lorem ipsum dolor',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),

                // ANCHOR Text for View Comments
                // TODO Gimana Caranya bisa diklik teks nya
                Text(
                  'View all 84 comments',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 6,
                ),

                // ANCHOR Post Upload Time
                Text(
                  '20 hours ago',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          // !SECTION Post Likes & Caption & Text for View Comments
        ],
      ),
    );
  }
}

class CarouselStep extends StatelessWidget {
  const CarouselStep({
    super.key,
    required this.size,
    required this.isActive,
  });

  final double size;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? size + 2 : size,
      height: isActive ? size + 2 : size,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

class IconProfileStory extends StatelessWidget {
  const IconProfileStory({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.purple,
                  Colors.yellow,
                ],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: (size * (92 / 100)),
            height: (size * (92 / 100)),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: Colors.white,
                width: size / 20,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://picsum.photos/536/354'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
