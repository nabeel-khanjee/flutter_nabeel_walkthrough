library first_pub_package_and_upload;

import 'package:flutter_nabeel_walkthrough/walkthrough.dart';
import 'package:flutter/material.dart';

/// A Intro Screen Class.

class IntroScreen extends StatefulWidget {
  final List<NabeelWalkThrough> walkthroughList;
  final MaterialPageRoute pageRoute;

  const IntroScreen({this.walkthroughList, this.pageRoute});

  void skipPage(BuildContext context) {
    Navigator.push(context, pageRoute);
  }

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController pageController = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChange(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == widget.walkthroughList.length) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEEEEEE),
      padding: const EdgeInsets.all(10),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: new Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: widget.walkthroughList,
              controller: pageController,
              onPageChanged: _onPageChange,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                new FloatingActionButton(
                    child: new Text(
                      lastPage ? "" : "SKIP",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () => lastPage ? null : widget.skipPage(context),
                    ),
                    new FloatingActionButton(child: new Text(lastPage?"GOT IT":"NEXT"),onPressed: ()=> lastPage? widget.skipPage(context):pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn))
              ],
            ),
          )
        ],
      ),
    );
  }
}
