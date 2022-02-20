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
    Interest(name: 'fine arts'),
    Interest(name: 'football'),
    Interest(name: 'formula 1'),
    Interest(name: 'programming'),
    Interest(name: 'tech'),
    Interest(name: 'bollywood'),
    Interest(name: 'hollywood')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: InterestButton(interest: interests[2]),
    );
  }
}

