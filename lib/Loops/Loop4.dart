    
// 2. **While Loop Retry:**
//     
//     Create a function `simulateNetworkRetry` that uses a while loop to print “Attempt X” for 3 attempts,
//     simulating a retry mechanism. After the loop, print “Max attempts reached.”
//     



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhileLoop extends StatefulWidget {
  const WhileLoop({super.key});

  @override
  State<WhileLoop> createState() => _WhileLoopState();
}

class _WhileLoopState extends State<WhileLoop> {
  dynamic? result;

  List<int> _list=[];
  void main()
  {
    int n=1,m=4;
    while(n<=3)
      {
        _list.add(n);
        n++;
          break;
      }


  }

  @override
  Widget build(BuildContext context) {


    main();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Text("$result"),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Row(
                      children: [
                        Text("${_list[index]} "),
                        if(_list[index] == 3)
                          Text("Max attempts reached.")
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
