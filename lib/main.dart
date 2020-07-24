import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_sliver_provider/model.dart';
import 'package:test_sliver_provider/view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Model(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Sliver Provider'),
      ),
      body: View(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        onPressed: () => context.read<Model>().toggle(),
      ),
    );
  }
}
