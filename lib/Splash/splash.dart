import 'dart:async';

import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:4),(){Navigator.pushReplacementNamed(context,'/splash');});
    return Scaffold(
      // backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Container(

              margin: EdgeInsets.only(top: 250),
              padding: EdgeInsets.only(left: 10),
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      // offset: Offset(0,10),
                      blurRadius: 3,
                    ),

                  ],
                  border: Border.all(color: Colors.green, width: 3),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              alignment: Alignment.center,
                child: Image.asset(
                  'asstes/Images/Logo.png',
                  height: 80,
                )),
            //   child: InkWell(
            //       onTap: () {
            //         Navigator.of(context).pushReplacementNamed('/splash');
            //       },
            //
            // ),
            Row(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(top: 150, left:80),
                  height: 50,
                  width: 200,
                  // color: Colors.grey,
                  child: Text(
                    'One Step to Freash...',
                    style: TextStyle(color: Colors.green, fontSize: 18,fontWeight:FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
