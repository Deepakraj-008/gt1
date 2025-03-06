
// 2. **Closures and Higher‑Order Functions:**
//
//     Write a function `makeIncrementer` that returns a closure. Each time the closure is called, it increments an internal counter
//     and returns the new value. Simulate multiple “button presses” by calling the closure several times and printing
//     the counter after each press.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClosuresandHigherOrder extends StatefulWidget {
  const ClosuresandHigherOrder({super.key});

  @override
  State<ClosuresandHigherOrder> createState() => _ClosuresandHigherOrderState();
}

class _ClosuresandHigherOrderState extends State<ClosuresandHigherOrder> {
  dynamic? result;

  void buildCards(  { required String name,int age =24} )
  {
    result="Username = $name and age= $age";
  }

  @override
  Widget build(BuildContext context) {

    void main()
    {
      buildCards(name: "Deepakraj" );
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
