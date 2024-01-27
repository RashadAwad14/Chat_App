import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
   runApp(const ScholarChat());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
 
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginScreen.id: (context) =>  LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),     
        ChatScreen.id :(context) =>  ChatScreen(),  
      },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
    );
  }
}
