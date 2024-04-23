import 'package:big_cart_ecomarce_app/Home/homescreen.dart';
import 'package:big_cart_ecomarce_app/utils/golbal.dart';
import 'package:big_cart_ecomarce_app/utils/list.dart';
import 'package:flutter/material.dart';

class detailsScreen extends StatefulWidget {
  const detailsScreen({super.key});

  @override
  State<detailsScreen> createState() => _detailsScreenState();
}

class _detailsScreenState extends State<detailsScreen> {
  @override
  Widget build(BuildContext context) {


    // var list = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 35, left: 16, right: 16, bottom: 16),
            height: 760,
            width: 400,
            decoration: BoxDecoration(
                // color: Colors.black,
                // border: Border.all(color: Colors.red, width: 2),
                ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),

                    // padding: EdgeInsets.all(16),
                    height: 346,
                    width: 400,
                    decoration: BoxDecoration(
                        // color: Colors.green,
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imgColunmfirstlist[selectindex]['image']),
                    )),
                    alignment: Alignment.topLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop('/home');
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black38,
                          size: 32,
                        ))),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 380,
                  width: 400,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      ),
                  child: Column(
                    children: [
                      Container(
                          // margin: EdgeInsets.all(10),
                          height: 380,
                          width: 360,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15)),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(Icons.favorite_border_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                imgColunmfirstlist[selectindex]['price'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.green,fontSize:20),
                                    ),
                                    Text(
                                      imgColunmfirstlist[selectindex]['fname'],
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      imgColunmfirstlist[selectindex]['cname'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '4.5 ⭐⭐⭐⭐(89 reviews)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      'Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world s finest lemon for more ...',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: EdgeInsets.only(
                                                  top: 10, left: 5),
                                              height: 50,
                                              width: 157,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10))),
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Quantity  ',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18),
                                                  ),
                                                ],
                                              )),
                                          SizedBox(width:10,),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 10, left: 5),
                                            height: 50,
                                            width: 157,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  height:20,
                                                  width: 20,
                                                  color: Colors.white,
                                                  child: InkWell(
                                                      onTap:() {
                                                       setState(() {
                                                         if(count>1)
                                                         {
                                                           count--;
                                                         }
                                                       });
                                                      },child: Icon(Icons.remove,color: Colors.green,)),
                                                ),
                                                Container(
                                                  height:20,
                                                  width: 20,
                                                  color: Colors.white,
                                                  child: Text('$count',style: TextStyle(color: Colors.black,fontSize:18),),
                                                ),
                                                Container(
                                                  height:20,
                                                  width: 20,
                                                  color: Colors.white,
                                                  child: InkWell(
                                                      onTap:() {
                                                       setState(() {
                                                         count++;
                                                       });
                                                      },child: Icon(Icons.add,color: Colors.green,)),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                        cartlist.add(imgColunmfirstlist[selectindex]);
                                        //   bool status=false;
                                        //   int index=0;
                                        //   for(int i=0;i<cartlist.length;i++)
                                        //     {
                                        //       if(cartlist[i]['name']==imgColunmfirstlist[selectindex]['name'])
                                        //         {
                                        //           index=i;
                                        //           status=true;
                                        //         }
                                        //     }
                                        //   if(status){
                                        //     cartlist[index]['quanity']++;
                                        //   }
                                        //   else{
                                        //     cartlist.add(
                                        //         imgColunmfirstlist[selectindex]);
                                        //   };
                                          Navigator.of(context)
                                              .pushNamed('/cart');
                                        //
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: 10,
                                          left: 5,
                                        ),
                                        height: 60,
                                        width: 315,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            gradient: LinearGradient(colors: [
                                              Colors.lime,
                                              Colors.green,
                                            ]),
                                            borderRadius:
                                                BorderRadius.circular(15)
                                            // borderRadius:
                                            ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 60,
                                            ),
                                            Text(
                                              'Add to cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.shopping_bag_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
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

int count = 0;
