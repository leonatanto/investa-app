import 'package:flutter/material.dart';

extension TextStyleExtension on BuildContext {
  // Access displayLarge (formerly headline1)
  TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;

  // Access displayMedium (formerly headline2)
  TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;

  // Access bodyLarge (formerly bodyText1)
  TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;

  // Access bodyMedium (formerly bodyText2)
  TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;

  // Access bodySmall (formerly caption)
  TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;
}
