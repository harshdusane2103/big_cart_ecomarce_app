import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashsecondscreen extends StatefulWidget {
  const splashsecondscreen({super.key});

  @override
  State<splashsecondscreen> createState() => _splashsecondscreenState();
}

class _splashsecondscreenState extends State<splashsecondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 414,
            width: 442,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            // alignment: Alignment.center,
            child: Image.asset(
              'asstes/Images/boy.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                height:95,
                width: 300,
                // color: Colors.grey,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [Text('Premium Food',style: TextStyle(color: Colors.black,fontSize:32,fontWeight: FontWeight.bold),),
                Text('At Your Doorstep',style: TextStyle(fontSize:32,fontWeight: FontWeight.bold),)],
                ),
                ),

                Container(
                  margin: EdgeInsets.only(top:3),
                  height:105,
                  width: 300,
                  // color: Colors.grey,
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [Text('Lorem ipsum dolor sit amet, consetetur',style: TextStyle(fontSize:16,fontWeight: FontWeight.w300),),
                  Text(' sadipscing elitr, sed diam nonumy',style: TextStyle(fontSize:16,fontWeight: FontWeight.w300),)],
                  ),
                ),
               Container(
                 margin: EdgeInsets.only(top:25),
                 height:30,
                 width: 60,
                 // color: Colors.grey,
                 alignment:Alignment.center,child: Row(
                   // mainAxisAlignment: MainAxisAlignment.center,
                   children: [Icon(Icons.more_horiz_outlined,size:50, color: Colors.green,),
                   ],
                 ),
               ),
               InkWell(
                 onTap: (){
                   Navigator.of(context).pushNamed('/home');               },
                 child: Container(
                   margin: EdgeInsets.only(top:40),

                   height: 60,
                   width: 380,
                   decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   alignment: Alignment.center,
                   child: Text('Get Strated ',style: TextStyle(color: Colors.white),
                   ),
                 ),
               )




              ],
            ),
          )
        ],
      ),
    );
  }
}
