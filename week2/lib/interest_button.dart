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
    return SizedBox(
      height: 70,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: GestureDetector(
          onTap: (){
            setState(() {
              interest.selected = !interest.selected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              child: Center(child: Text(
                  interest.name,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[700]
                  ),
              )),
              duration: const Duration(milliseconds: 250),
              height: 50,
              width: (16.0*(interest.name.length)),
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
      ),
    );
  }
}
