import 'package:flutter/material.dart';
import 'package:flutter_30_days/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to $days days of Flutter by $name"),
      ),
      drawer: MyDrawer(),
    );
  }
}
