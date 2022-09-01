import 'package:flutter/material.dart';
import 'package:whiteboard/whiteboard.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  WhiteBoardController whiteBoardController = WhiteBoardController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whiteboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Whiteboard'),
          actions: [
            IconButton(
                onPressed: () {
                  whiteBoardController.clear();
                },
                icon: Icon(Icons.clear)),
            IconButton(
                onPressed: () {
                  whiteBoardController.undo();
                },
                icon: Icon(Icons.undo)),
            IconButton(
                onPressed: () {
                  whiteBoardController.redo();
                },
                icon: Icon(Icons.redo))
          ],
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: WhiteBoard(
                  controller: whiteBoardController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
