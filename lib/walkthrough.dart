import 'package:flutter/material.dart';

class NabeelWalkThrough extends StatefulWidget {
  final title;
  final imageColor;
  final imageIcon;
  final content;

  const NabeelWalkThrough(
      {Key key,
      this.title,
      this.imageColor = Colors.redAccent,
      this.imageIcon,
      this.content});

  @override
  _NabeelWalkThroughState createState() => _NabeelWalkThroughState();
}

class _NabeelWalkThroughState extends State<NabeelWalkThrough>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    animation = new Tween(begin: -250.0, end: 0.0).animate(new CurvedAnimation(
        parent: animationController, curve: Curves.easeInOut));
    animation.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: new Material(
        animationDuration: new Duration(milliseconds: 500),
        elevation: 2.0,
        borderRadius: new BorderRadius.all(Radius.circular(50.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Transform(
              transform:
                  new Matrix4.translationValues(animation.value, 0.0, 0.0),
              child: new Text(
                widget.title,
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            new Transform(
              transform:
                  new Matrix4.translationValues(animation.value, 0.0, 0.0),
              child: new Text(
                widget.content,
                softWrap: true,
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            new Icon(
              widget.imageIcon,
              size: 100,
              color: widget.imageColor,
            )
          ],
        ),
      ),
    );
  }
}
