import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MediaQuery Example')),
        body: MediaQueryExample(),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    Orientation orientation = MediaQuery.of(context).orientation;
    EdgeInsets padding = MediaQuery.of(context).padding;
    EdgeInsets viewInsets = MediaQuery.of(context).viewInsets;
    EdgeInsets viewPadding = MediaQuery.of(context).viewPadding;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    bool accessibleNavigation = MediaQuery.of(context).accessibleNavigation;
    bool invertColors = MediaQuery.of(context).invertColors;
    bool disableAnimations = MediaQuery.of(context).disableAnimations;
    bool highContrast = MediaQuery.of(context).highContrast;
    bool boldText = MediaQuery.of(context).boldText;
    List<DisplayFeature> displayFeatures = MediaQuery.of(context).displayFeatures;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Screen Width: $screenWidth'),
          Text('Screen Height: $screenHeight'),
          Text('Pixel Ratio: $pixelRatio'),
          Text('Orientation: $orientation'),
          Text('Padding: $padding'),
          Text('View Insets: $viewInsets'),
          Text('View Padding: $viewPadding'),
          Text('Text Scale Factor: $textScaleFactor'),
          Text('Brightness: $brightness'),
          Text('Accessible Navigation: $accessibleNavigation'),
          Text('Invert Colors: $invertColors'),
          Text('Disable Animations: $disableAnimations'),
          Text('High Contrast: $highContrast'),
          Text('Bold Text: $boldText'),
          Text('Display Features: $displayFeatures'),
        ],
      ),
    );
  }
}
