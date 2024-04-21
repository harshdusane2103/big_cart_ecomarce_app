import 'package:big_cart_ecomarce_app/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddressScrren extends StatefulWidget {
  const AddressScrren({super.key});

  @override
  State<AddressScrren> createState() => _AddressScrrenState();
}

class _AddressScrrenState extends State<AddressScrren> {
  // get index => null;

  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading:InkWell(
            onTap: () {
              Navigator.of(context).popAndPushNamed('/home');
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true
        ,
        title: Text('Add Address',
        style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 50,
                   width: 370,
                   color: Colors.white,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(

                       children: [
                        Container(child: Image.asset('asstes/Images/user.png',height: 20,width: 20,),),SizedBox(width: 20,),Text('Name',),

                       ],
                     ),
                   ),
                 ),
               ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ... List.generate(addresslist.length, (index) =>
                Container(
                  margin: EdgeInsets.only(top:5,bottom: 10),
                  height: 50,
                  width: 370,
                  color: Colors.white,

                  child: Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                      children: [
                         Icon(addresslist[index]['icon']),
                         SizedBox(width: 10,),
                         Text(addresslist[index]['name'])


                      ],
                    ),
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 50,
                    width: 380,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          Container(child: Image.asset('asstes/Images/earth.png',height: 20,width: 20,),),SizedBox(width: 20,),Text('Country',),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height:200,),
                Container(
                  height: 50,width: 370,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child:

                       Text('Add Address',style: TextStyle(color: Colors.white,fontSize: 18),)),


              ],
            ),
          ),

        ],
      ),
    );
  }


  
}
