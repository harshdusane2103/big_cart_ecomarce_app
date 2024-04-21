import 'package:flutter/material.dart';

class paymentscreen extends StatefulWidget {
  const paymentscreen({super.key});

  @override
  State<paymentscreen> createState() => _paymentscreenState();
}

class _paymentscreenState extends State<paymentscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            Row(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      margin: EdgeInsets.only(left: 10, top: 30, right: 10),
                      height: 80,
                      width: 364,
                      // decoration: BoxDecoration(color: Colors.grey),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop('/home');
                              });
                            },
                            child: Icon(Icons.arrow_back),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            'Payment',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 24),
                          ),

                          // Icon((Icons.payment)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 600,
              width: 370,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal  ',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GST % ',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount ',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'total',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Text(
                          '0',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(height:30,),
                    DropdownButton(
                      value: 'Online',
                      icon: Icon(Icons.arrow_drop_down),
                      isExpanded:true,


                      items: [DropdownMenuItem(child: Text("Online"), value: 'Online',),
                        DropdownMenuItem(child: Text("COD"), value: 'COD',),
                        DropdownMenuItem(child: Text("Offline"), value: 'Offline',),

                      ],
                      onChanged: (value){
                        setState(() {
                          // dropDownselect='Online';
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/Success');
                            },
                              child: Text('Pay',style: TextStyle(color: Colors.white,fontSize: 18),)),
                        )

                      ],
                    ),

                  ],
                ),
              ),
            ),


           
          ],
        ),
      ),
    );
  }
}
String dropDownselect='Online';