import 'package:flutter/material.dart';
import 'package:untitled1/pages/routes.dart';

class MoodsPage extends StatelessWidget {
  const MoodsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

      appBar: AppBar(
      centerTitle: true,
      title: Text(
        "So How are you feeling right now?",
      ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
    ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [

            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, MyRoutes2.MainRoute),
              child: Container(
                height: 100,
                width: 400,
                color: Colors.red,
                child: Text("HAPPY",
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
                child: Text("SAD(work in progress)"
                    "",
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
