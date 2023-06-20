import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chapter3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello world! '*6,
              textAlign: TextAlign.center,
            ),
            Text('Hello world'*4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Text("Hello world",
              textScaleFactor: 1.5,
            ),
            Text("Hello world",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 28.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: Paint()..color=Colors.yellow,
                  decoration:TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed
              ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
