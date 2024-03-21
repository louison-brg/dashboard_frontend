import 'package:flutter/material.dart';
const double narrowScreenWidthThreshold = 450;

const double mediumWidthBreakpoint = 1100;
const double largeWidthBreakpoint = 1500;

const double transitionLength = 500;

enum ColorSelectionMethod {
  colorSeed,
  image,
}

enum ColorImageProvider {
  leaves('Tibo',
      'https://yt3.googleusercontent.com/0smoTFWkD8_fdsVOufWaLoTkwL83At9iBk0y2JA3O4DMJQSfBKMR2y1cnSxEuxkCIMDMcOpwmQ=s900-c-k-c0x00ffffff-no-rj'),
  peonies('Peonies',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png'),
  bubbles('Bubbles',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png'),
  seaweed('Seaweed',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_4.png'),
  seagrapes('Sea Grapes',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_5.png'),
  petals('Petals',
      'https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_6.png');

  const ColorImageProvider(this.label, this.url);
  final String label;
  final String url;
}

enum ColorSeed {
  baseColor('red', Colors.red);

  const ColorSeed(this.label, this.color);
  final String label;
  final Color color;
}
//AJOUTER ICI LES NOUVELLE PAGE SI BESOIN
enum ScreenSelected {
  dashboard(0);

  const ScreenSelected(this.value);
  final int value;
}