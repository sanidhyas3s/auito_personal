import 'package:flutter/material.dart';
import 'interests.dart';
void main() {
  runApp(MaterialApp(
      home: InterestsSelection(),
  ));
}

class InterestsSelection extends StatefulWidget {
  @override
  State<InterestsSelection> createState() => _InterestsSelectionState();
}

class _InterestsSelectionState extends State<InterestsSelection> {
  List <Interests> interests = [
    Interests(name: 'cricket'),
    Interests(name: 'fine arts'),
    Interests(name: 'football'),
    Interests(name: 'formula 1'),
    Interests(name: 'programming'),
    Interests(name: 'tech'),
    Interests(name: 'bollywood'),
    Interests(name: 'hollywood')
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
