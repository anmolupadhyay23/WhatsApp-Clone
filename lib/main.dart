import 'package:chat_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  initialRoute: 'HomeScreen',
  routes: {
    'HomeScreen': (context) => HomeScreen(),
  },
));
