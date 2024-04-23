import 'package:big_cart_ecomarce_app/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/golbal.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.of(context).popAndPushNamed('/home');
            });
          },
          child: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Cart(context),
              ],
            ),
            ...List.generate(
              cartlist.length,
              (index) => Container(
                margin: EdgeInsets.only(top: 5),
                height: 200,
                width: 368,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset(
                          cartlist[index]['image'],
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                            ),

                            Text(
                              cartlist[index]['price'].toString(),
                              style: TextStyle(
                                  color: Colors.green, fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cartlist[index]['fname'],
                                style: TextStyle(
                                    fontSize: 18, )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cartlist[index]['cname'],
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                if (count > 1) {
                                  count--;

                                }
                              });
                            },
                            child: Icon(
                              Icons.remove,
                              color: Colors.green,
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Text('$count'),
                        SizedBox(
                          width: 7,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                              color: Colors.green,
                            )),
                        SizedBox(
                          width: 7,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: InkWell(

                              onTap: () {
                                setState(() {
                                  cartlist[index]['quanity']=1;
                                  cartlist.removeAt(index);
                                });
                              },
                              child: const Icon(
                                Icons.delete,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 150,
        color: Colors.black12,
        child: Column(

          children: [
               InkWell(
                 onTap: () {
                   //
                   for (int i = 0; i < cartlist.length; i++) {
                     count = (count + cartlist[i]['quanity']++).toInt();

                     amount =( amount + cartlist[i]['price'])*cartlist[i]['quanity'];

                   }
                   total=((amount*18)/100)+amount;
                   Navigator.of(context).pushNamed('/pay');
                 },

                 child: Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Payment',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
               ),
          ],
        ),
      ),
    );
  }

  Row Cart(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
int index=0;
int selectindex = 0;
int count = 1;
