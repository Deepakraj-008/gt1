
// ### Medium
// 
// 1. **Dynamic List Transformation:**
//     
//     Write a function `prefixWidgets` that accepts a list of strings (widget names) and uses a for loop to add
//     the prefix “Widget: ” to each name. Return and print the updated list.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  dynamic? result;


  List<dynamic> _list=[];
  List<dynamic> widgets =[];
  void prefixWidgets()
  {
    widgets=["Text","Image","Button","List"];
    for( var m in widgets)
    {
      _list.add(m);
      if(m==4)
        {
          break;
        }
    }
  }

  void main()
  {
    prefixWidgets();
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
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return Text("Widget:  ${_list[index]}");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
