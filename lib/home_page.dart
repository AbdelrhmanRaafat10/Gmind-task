import 'package:flutter/material.dart';
import 'package:unityproject/unity.dart';

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
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
                color: Colors.deepPurple[200],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => unity()));
                },
                child: Text("MyUnityGame"))
          ],
        ),
      ),
    );
  }
}
