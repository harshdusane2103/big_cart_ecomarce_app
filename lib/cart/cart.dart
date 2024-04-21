
import 'package:big_cart_ecomarce_app/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Cart(context),
              ],
            ),
            ...List.generate(
                cartlist.length,
                (index) => cart(
                      image: cartlist[index]['image'],
                      fname: cartlist[index]['fname'],
                      price: cartlist[index]['price'],
                      cname: cartlist[index]['cname'],
                      index: index,
                      // quanity:  cartlist[index]['quanity']
                    )),
            Container()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 150,
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total ',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Row(
                    children: [
                      Icon(Icons.currency_rupee,color: Colors.white,),
                      Container(
                        color: Colors.blue,
                        child: GestureDetector(
                          onTap: () {
                            for(int i=0;i<cartlist.length;i++)
                            {
                              total=(total+cartlist.length).toInt();
                            }
                          },
                          child: Text('$total',
                              style:
                              const TextStyle(color: Colors.white, fontSize: 25)),
                        ),
                      ),
                    ],
                  ),


                  // Text('\n $total',style:TextStyle(color: Colors.white, fontSize: 25))
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/pay');
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Payment',style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
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
                    Navigator.of(context).pop('/cart');
                  });
                },
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 120,
              ),
              Text(
                'My Cart',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container cart({
    required String image,
    required String fname,
    required String price,
    required String cname,
    required var index,
  }) {
    return Container(
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
                image,
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
                    fname,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(price,
                      style: TextStyle(fontSize: 18, color: Colors.green)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(cname, style: TextStyle(fontSize: 18)),
                ],
              )
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
                      if (cartlist[index]['quanity'] > 1) {

                        total= (total-cartlist[index]['price']).toInt();
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
              Text(
                cartlist[index]['quanity'].toString(),
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                width: 7,
              ),
              InkWell(

                  onTap: () {
                    setState(() {

                      total= (total+cartlist[index]['price']).toInt();
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
                    //todo--------------------remove
                    onTap: () {
                      setState(() {

                        cartlist[index]['quanity'] = 1;
                        cartlist.removeAt(selectindex);
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
    );
  }
}

int selectindex = 0;
int count = 0;
var total = 0;


