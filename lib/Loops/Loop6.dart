   
// 2. **Functional Collection Methods:**
//     
//     Write a function `processApiData` that:
//     
//     - Accepts a list of maps (each with keys “id” and “active”).
//     - Uses the `.where()` method to filter out maps where “active” is false.
//     - Uses `.map()` to extract the “id” of each active map.
//     Return and print the list of active IDs.
//     *Hint:* This simulates filtering and processing backend data for a ListView.


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectionMethods extends StatefulWidget {
  const CollectionMethods({super.key});

  @override
  State<CollectionMethods> createState() => _CollectionMethodsState();
}

class _CollectionMethodsState extends State<CollectionMethods> {
  dynamic? result;


List<dynamic> _data=[];

  List<Map<String,dynamic>> _list=[{
    "Id":23,
    "Active":true
  },
    {
      "Id":20,
      "Active":true
    },
    {
      "Id":22,
      "Active":false
    },
    {
      "Id":25,
      "Active":false
    },
  ];
  void main()
  {


    _data.add(_list.where((num)=>num["Active"]==true).map((k)=>k["Id"]).toList());

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
                  itemCount: _list.length,
                  itemBuilder: (context,index){
                    return Text("${_data[index]}");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
