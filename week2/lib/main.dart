// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'interests.dart';
import 'interest_button.dart';

void main() {
  runApp(MaterialApp(
      home: InterestsSelection(),
  ));
}

class InterestsSelection extends StatefulWidget {
  const InterestsSelection({Key? key}) : super(key: key);

  @override
  _InterestsSelectionState createState() => _InterestsSelectionState();
}

class _InterestsSelectionState extends State<InterestsSelection> {

  List <Interest> interests = [
    Interest(name: 'cricket'),
    Interest(name: 'technology'),
    Interest(name: 'fine arts'),
    Interest(name: 'football'),
    Interest(name: 'photography'),
    Interest(name: 'bollywood'),
    Interest(name: 'formula 1'),
    Interest(name: 'programming'),
    Interest(name: 'hip-hop'),
    Interest(name: 'basketball'),
    Interest(name: 'basketball0'),
    Interest(name: 'basketball1'),
    Interest(name: 'basketball2'),
    Interest(name: 'basketball3'),
    Interest(name: 'hollywood')
  ];

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      scrollbarOrientation: ScrollbarOrientation.left,
      isAlwaysShown: true,
      minOverscrollLength: 30,
      crossAxisMargin: 20,
      mainAxisMargin: 150,
      minThumbLength: 30,
      thickness: 15,
      radius: Radius.circular(7.5),
      thumbColor: Colors.blue[300],
      interactive: true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[350],
          title: Text(
            'Choose your interests!',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              //fontStyle: FontStyle.italic,
              color: Colors.grey[700]
          ),),
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(
            children: interests.map((interest) => InterestButton(interest:interest)).toList(),
          ),
        ),
      ),
    );
  }
}

