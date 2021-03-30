import 'package:flutter_nabeel_walkthrough/first_pub_package_and_upload.dart';
import 'package:flutter_nabeel_walkthrough/walkthrough.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  final List<NabeelWalkThrough> list = [
    NabeelWalkThrough(
      title: "Title 1",
      content: "Content 1",
      imageIcon: Icon(Icons.restaurant_menu),
    ),
    NabeelWalkThrough(
      title: "Title 2",
      content: "Content 2",
      imageIcon: Icon(Icons.search),
    ),
    NabeelWalkThrough(
      title: "Title 3",
      content: "Content 3",
      imageIcon: Icon(Icons.shopping_cart),
    ),
    NabeelWalkThrough(
      title: "Title 4",
      content: "Content 4",
      imageIcon: Icon(Icons.verified_user),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      walkthroughList: list,
      pageRoute: new MaterialPageRoute(builder: (context)=> new TestScreen()),
    );
  }
}
