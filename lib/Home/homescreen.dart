

import 'package:big_cart_ecomarce_app/utils/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marquee_widget/marquee_widget.dart';

import '../All_udf/udf.dart';
import '../utils/golbal.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading:           Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed('/add');
                        });
                      },
                      child: Container(
                        height:50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle

                        ),
                        child: Image.asset('asstes/Images/man.png'),
                      ),
                    ),
        ),
        actions: [           Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
                      onTap:() {
                        setState(() {
                          Navigator.of(context).pushNamed('/cart');
                        });
                      },
                        child: Icon(Icons.shopping_cart)),
        )
                ],
              ),



      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              serachbar(),

              ],
            ),
            Marquee(
              // animationDuration: Duration(microseconds: 50),
              autoRepeat: true,
              child: Row(

                children: [ ... List.generate(bannnerlist.length, (index) => silder(image:bannnerlist[index]['image'],text: bannnerlist[index]['text']))],
              ),
            ),
            Row(
              children: [
                cat(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('/cate');
                    });
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  catlist(),
                ],
              ),
            ),
            Row(
              children: [
                cat2(),
              ],
            ),
            Wrap(
              children: [
                 ... List.generate(imgColunmfirstlist.length, (index) => InkWell(
                     onTap:() {
                       setState(() {
                         selectindex=index;
                         Navigator.of(context).pushNamed('/det');
                       });
                     },child: boxmain(imgColunmfirstlist[index]['image'],imgColunmfirstlist[index]['price'],imgColunmfirstlist[index]['fname'],imgColunmfirstlist[index]['cname'],))

             )   // )
              ],

            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: 380,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Icon(
              Icons.home,
              size: 30,
            ),

            Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/cart');
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
            ),

            Icon(
              Icons.history,
              size: 30,
            )
          ],
        ),
      ),
    );
  }






}

