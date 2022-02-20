import 'package:flutter/material.dart';
import 'interests.dart';

class InterestButton extends StatefulWidget {
  Interest interest;//try to remove this
  InterestButton({required this.interest});
  @override
  _InterestButtonState createState() => _InterestButtonState(interest: interest);
}

class _InterestButtonState extends State<InterestButton> {
  Interest interest;
  _InterestButtonState({required this.interest});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: GestureDetector(
        onTap: (){
          setState(() {
            interest.selected = !interest.selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            child: Text(interest.name),
            duration: const Duration(milliseconds: 300),
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(50),
              boxShadow: !interest.selected?
              [
                BoxShadow(
                  color: Colors.grey[500]!,
                  offset: const Offset(4,4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4,-4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ]
                  :null,
            ),
          ),
        ),
      ),
    );
  }
}
