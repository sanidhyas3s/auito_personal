import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/pages/moods.dart';
import 'package:untitled1/pages/routes.dart';
import 'package:untitled1/pages/webview.dart';
import 'package:untitled1/pages/webview2.dart';
import 'package:untitled1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.MoodRoute,
      routes: {
        MyRoutes.MoodRoute: (context)=>MoodsPage(),
        MyRoutes2.MainRoute: (context) =>YourApp(),
        MyRoutes.HomeRoute: (context)=>Home(),
        MyRoutes.WebRoute: (context) =>WebViewApp(),
        MyRoutes.MovieRoute: (context) =>WebViewApp2(),
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [

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
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, MyRoutes.WebRoute),
              child: Container(
                height: 100,
                width: 400,
                color: Colors.red,
                child: Text("Click here to navigate to an article!",
                    textAlign: TextAlign.center),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, MyRoutes.MovieRoute),
              child: Container(
                height: 100,
                width: 400,
                color: Colors.red,
                child: Text("Click here for movie suggestions!",
                    textAlign: TextAlign.center),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 100,
                width: 400,
                color: Colors.red,
                child: Text("Click here for book suggestions!(work in progress)",
                    textAlign: TextAlign.center),
                alignment: Alignment.center,
              ),

          ]),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
