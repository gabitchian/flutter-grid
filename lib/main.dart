import 'package:flutter/material.dart';
import 'package:flutter_grid/widgets/card.dart';
import 'package:flutter_grid/widgets/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget generateCard(int e) {
    return MyCard(num: e);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int rows = 5, columns = 5;
    List<int> elements =
        List<int>.generate(80, (int index) => index + 1, growable: true);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Grid<int>(
        rows: rows,
        columns: columns,
        elements: elements,
        onMap: generateCard,
      ),
    );
  }
}
