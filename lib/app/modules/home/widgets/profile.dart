// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          // ANCHOR Custom Appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_box_outlined),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    )
                  ],
                ),
              ],
            ),
          ),

          // ANCHOR Profile Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                // ANCHOR Photo Profile
                Container(
                  width: 95,
                  height: 95,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.red,
                                  Colors.amber,
                                ]),
                            borderRadius: BorderRadius.circular(60)),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.grey[300],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage('https://picsum.photos/536/354'),
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            )),
                      ),
                    ],
                  ),
                ),

                // ANCHOR Jumlah Post, Followers, Following
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoProfile(
                        title: 'Posts',
                        total: '89',
                      ),
                      InfoProfile(
                        title: 'Followers',
                        total: '2.5K',
                      ),
                      InfoProfile(
                        title: 'Following',
                        total: '745',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),

          // ANCHOR Profile Username
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Username',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // ANCHOR Profile Bio
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed egestas egestas fringilla phasellus.',
                style: TextStyle(
                  color: Colors.grey[800],
                ),
                children: [
                  TextSpan(
                    text: "#hastag\n",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  TextSpan(
                    text: 'Link goes here',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          // Button Edit Profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // ANCHOR Stories
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 100,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Stack(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            // color: Colors.grey,
                            // borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.only(right: 10),
                          width: 71,
                          height: 71,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://picsum.photos/id/$index/500/500"),
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Text("Story ${index + 1}"),
                ],
              ),
            ),
          ),

          // ANCHOR Row Icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_on),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_pin_outlined),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),

          // ANCHOR Posts
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 50,
            itemBuilder: (context, index) =>
                Image.network('https://picsum.photos/id/$index/500/500'),
          ),
        ],
      ),
    );
  }
}

class InfoProfile extends StatelessWidget {
  const InfoProfile({
    super.key,
    required this.title,
    required this.total,
  });

  final String title;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          total,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}
