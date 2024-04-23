import 'package:flutter/material.dart';
class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:InkWell(
          onTap: () {
            Navigator.of(context).popAndPushNamed('/home');
          },
            child: Icon(Icons.arrow_back)),
        centerTitle: true
        ,
        title: Text('Order Success'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0,bottom:12),
            child: Container(
              height:680,
              width: 382,
              color: Colors.grey.shade50,
              child:  Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(alignment:Alignment.topCenter,
                        margin: EdgeInsets.only(top:150),
                        child: Image.asset('asstes/Images/bag.png'),),


                    ],
                  ),
                  SizedBox(height: 25,),
                  Text('Your order was ',style: TextStyle(color: Colors.black,fontSize:24,fontWeight: FontWeight.w700),),

                  Text(' succesfull !',style: TextStyle(color: Colors.black,fontSize:24,fontWeight: FontWeight.w700),),
                 SizedBox(height: 25,),
                 Text('You will get a response within',style: TextStyle(fontSize: 18),),
                  Text(' a few minutes.',style: TextStyle(fontSize: 18),),
                  SizedBox(height:163,),
                  Container(
                    height:80,
                    width:double.infinity,
                    decoration: BoxDecoration(color: Colors.green),
                    alignment:Alignment.center,child: Text('Track order',style: TextStyle(color: Colors.white,fontSize: 24),)

                  )
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
