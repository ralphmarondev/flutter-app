import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'TabBar Demo';
    return MaterialApp(
      title: appTitle,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ]),
        ),
      ),
    );
  }
}
