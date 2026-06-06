import 'package:flutter/material.dart';

class MyMessageBuuble extends StatelessWidget {

  final String number;

  const MyMessageBuuble({ super.key, required this.number });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
            child: Text( "Lorem ipsum 20 => $number", style: TextStyle( fontSize: 15, color: Colors.white ), ),
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}