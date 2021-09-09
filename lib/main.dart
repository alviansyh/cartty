import 'package:cartty/widgets/option.dart';

import '/widgets/header.dart';
import '/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cartty());
}

class Cartty extends StatelessWidget {
  const Cartty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: oxfordBluetColor,
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
          ),
          child : Column(
            children: [
              Header(),
              Option(),
              Option(),
              Option(),
            ],
          ) 
        ),
      ),
    );
  }
}
