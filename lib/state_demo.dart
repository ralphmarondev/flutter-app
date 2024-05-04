import 'package:flutter/material.dart';

class StatesDemo extends StatelessWidget {
  const StatesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'State Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Demo'),
        ),
        body: const Center(
          child: Tapbox(),
        ),
      ),
    );
  }
}

class Tapbox extends StatefulWidget {
  const Tapbox({super.key});

  @override
  State<Tapbox> createState() => _TapboxStateState();
}

class _TapboxStateState extends State<Tapbox> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontFamily: 'Courier New',
            ),
          ),
        ),
      ),
    );
  }
}
