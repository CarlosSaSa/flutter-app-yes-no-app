import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';
import 'package:yes_no_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  void onPressButton() {
    print("Hello world");
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes-No app',
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
      theme: AppTheme().theme(),
    );
  }

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'First app',
  //     debugShowCheckedModeBanner: false,
  //     theme: AppTheme().theme(),
  //     home: Builder(
  //       builder: (context) {
  //         return Scaffold(
  //           appBar: AppBar( title: Text("Yes/No App", style: Theme.of(context).textTheme.bodyMedium?.copyWith( color: Colors.white )   )),
  //           body: Center( child: FilledButton.tonal(onPressed: () => onPressButton(), child: Text("Click me") ))
  //         );
  //       })
  //   );
  // }


  

}

