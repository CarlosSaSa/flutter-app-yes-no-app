import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';


var logger = Logger();


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
      body: DemoContainer(),
    );
  }
}

class DemoContainer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF235B4E)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Icon( Icons.check, color: Colors.white, ),
                Text("Hello world", style: TextStyle( color: Colors.white ),),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            var now = DateTime.now();
            var formatter = DateFormat("dd/MM/yyyy");
            logger.d("Hello world from debug at => ${ formatter.format( now ) }");
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFFDDC9A3),
            foregroundColor: Colors.white
          ),
          child: Text("Click here!"),
          )
      ],
    );
  }
}


class _ChatView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
      Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10 ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Text("Index => $index");     
              },)  
            ),
            Text("Hello world from flutter")
          ],
        ),
      )
    );
  }
}