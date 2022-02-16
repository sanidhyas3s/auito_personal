import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyRoutes.HomeRoute: (context)=>Home(),
      },
      home: new YourApp(),
    );
  }
}

class YourApp extends StatelessWidget {
  const YourApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      color: Colors.red,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Welcome to Auito!",
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Column(children: [
             ElevatedButton(
               onPressed: () => Navigator.pushNamed(context, MyRoutes.HomeRoute),
               child: Container(
                height: 100,
                width: 400,
                color: Colors.red,
                child: Text("Click Here to Navigate to a youtube video!",
                    textAlign: TextAlign.center),
                alignment: Alignment.center,
            ),
             ),

          SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            width: 400,
            color: Colors.red,
            child: Text("Post a story!",
                textAlign: TextAlign.center),
            alignment: Alignment.center,
          ),
        ]),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
