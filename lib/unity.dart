import 'package:flutter_unity/flutter_unity.dart';
import 'package:flutter/material.dart';

class unity extends StatelessWidget {
  UnityViewController? uc;

  void _incrementCounter() {
    uc?.send('Cube', 'setRotationSpeed', '30');
  }

  void oncreat(UnityViewController? controller) {
    uc = controller;
  }

  void onmessage(UnityViewController? controller, String? message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return UnityView(
      onCreated: oncreat,
      onMessage: onmessage,
    );
  }
}
