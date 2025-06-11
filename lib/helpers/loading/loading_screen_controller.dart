import 'package:flutter/foundation.dart' show immutable;

// typedef 'X' = 'Y' Function('Z');
// this means that any function of type 'X' will return a function that itself returns type 'Y'
// 'Z' represents parameters the returned function will take

typedef CloseLoadingScreen = bool Function();
typedef UpdateLoadingScreen = bool Function(String text);

@immutable
class LoadingScreenController {
  final CloseLoadingScreen close;
  final UpdateLoadingScreen update;

  const LoadingScreenController({required this.close, required this.update});
}
