# flutter_nabeel_walkthrough

A new Flutter package project. which help you to creating animated walkthrough 

## Usage

[Example](https://github.com/nabeel-khanjee/flutter_nabeel_walkthrough/blob/main/example/example.dart)

To use this package:

* add the dependency to your [pubspec.yaml](https://github.com/nabeel-khanjee/flutter_nabeel_walkthrough/blob/main/pubspec.yaml) file. 

```yaml
    dependencies:
        flutter:
            sdk: flutter
        flutter_nabeel_walkthrough:
```

###  How To Use

```dart
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

```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
