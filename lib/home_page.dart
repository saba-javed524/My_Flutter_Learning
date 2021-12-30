import 'package:flutter/material.dart';

import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int day = 3;
    final String name = "Saba";

    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to FLUTTER output one for day#$day by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
