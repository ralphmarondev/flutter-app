import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({super.key});

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  void onPressed() {
    if (kDebugMode) {
      print('IconButton is pressed.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text('App Bar Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.navigate_before_outlined)),
        actions: [
          IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.info_outline_rounded)),
          IconButton(
              onPressed: onPressed, icon: const Icon(Icons.update_outlined)),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('App Bar Demo')],
        ),
      ),
    ));
  }
}
