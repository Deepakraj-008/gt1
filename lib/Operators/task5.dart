
// ### Hard
//
// 1. **Bitwise Manipulation:**
// Write a function that:
//     - Accepts an integer representing a bit field (simulate widget configuration flags).
//     - Uses bitwise operators (`&`, `|`, `^`, `<<`, `>>`) to toggle a specific flag and then prints the updated value.
//     Explain in comments how the operation could be used in managing widget state or permissions.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BitwiseManipulation extends StatefulWidget {
  const BitwiseManipulation({super.key});

  @override
  State<BitwiseManipulation> createState() => _BitwiseManipulationState();
}

class _BitwiseManipulationState extends State<BitwiseManipulation> {
  dynamic? result;


  @override
  Widget build(BuildContext context) {

    void Flutters()
    {
      String title ="Flutter.com";
      int count= 15;
      bool state=true;
      result ="Welcome to $title ! You have $count new notifications are visible ? = $state";
    }

    void main()
    {
      Flutters();

    }
    main();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("$result"),
          ],
        ),
      ),
    );
  }
}
