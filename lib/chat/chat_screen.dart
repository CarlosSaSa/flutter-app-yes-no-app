import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text( "App", 
                      style: TextStyle( color: Colors.white )), 
        centerTitle: true,
        leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/1140691099/photo/young-woman-using-a-laptop-computer-graphic-designer-ux-design.jpg?s=2048x2048&w=is&k=20&c=taPAeCjXkNfSmE77znmhHgHrOqa9fDBA75kSqCrDjyg="),
            ),
          ),   
        ),
    
    );
  }
}