
// ### Hard
//
// 1. **Advanced Function Use:**
//
//     Write a recursive function `factorial` that computes the factorial of a given number. Then, integrate this function into a
//     simulated Flutter scenario by creating a function `buildFactorialWidget` that returns a string like “Factorial of 5 is 120”.
//     Print the result.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvancedFunction extends StatefulWidget {
  const AdvancedFunction({super.key});

  @override
  State<AdvancedFunction> createState() => _AdvancedFunctionState();
}

class _AdvancedFunctionState extends State<AdvancedFunction> {
  dynamic? result,t=1,n=6;


  void main()
  {
    while(n>1)
    {
      t=t*n;
      n--;
      result=t;
    }

  }
  @override
  Widget build(BuildContext context) {

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
