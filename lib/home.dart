import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  myAchiev(num, type){
    return Row(
      children: [
        Text(num, 
          style: TextStyle(
              fontSize:30, fontWeight: FontWeight.bold)), 
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.4, 0.7, 1.0],
          // Define to what the snappings relate to. In this case, 
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Center(
          child: Text('This widget is below the SlidingSheet', style: TextStyle(
            color: Colors.white
          )),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('78', ' Projects'),
                    myAchiev('65', ' Clients'),
                    myAchiev('92', ' Messages'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized In', 
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 105,
                            height:115,
                            child: Card(
                              color: Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              )
                            ),
                          )
                        ],
                      )
                    ]
                  )
              ],
            )
          );
        },
      ),
    );
  }
}