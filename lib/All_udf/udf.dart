import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/list.dart';


Container serachbar() {
  return Container(
    margin: EdgeInsets.only(top:5, left: 16, right: 16),
    padding: EdgeInsets.all(5),
    height: 50,
    width: 352,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black12, width: 2),
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.shade50,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.search,
          size: 20,
        ),
        Text(
          'Serach a new ',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        Icon(
          Icons.menu_open_outlined,
          size: 20,
        ),
      ],
    ),
  );
}

Container silder() {
  return Container(
    margin: EdgeInsets.only(top:10, left: 16, right: 16),
    height: 250,
    width: 352,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('asstes/Images/slider.png'),
        )),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 35, top: 50),
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              // color:Colors.black38
              ),
          child: Text(
            '20% off on your\n first purchase',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        )
      ],
    ),
  );
}

Container cat() {
  return Container(
    margin: EdgeInsets.only(top:2, left: 16, right: 16),
    height:50,
    width: 322,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),



      ],
    ),
  );
}

Widget catelist(String image, String name) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(
          top: 5,
          left: 5,
        ),
        height: 60,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade50,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          image,
          height: 40,
          width: 40,
        ),
      ),
      Text(
        name, style: TextStyle(fontSize:12,fontWeight: FontWeight.w300),
      )
    ],
  );
}

Container catlist() {
  return Container(
    margin: EdgeInsets.only(
      top: 5,
      left: 16,
    ),
    height: 100,
    width: 533,
    decoration: BoxDecoration(
        // border: Border.all(color: Colors.black12, width: 2),
        ),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(
          iconlist.length,
          (index) =>
              catelist(iconlist[index]['image'], iconlist[index]['name']),
        )
      ],
    ),
  );
}

Container cat2() {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 16, right: 16),
    height: 50,
    width: 352,
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Featured products',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      ],
    ),
  );
}

Container boxmain(String image, int price, String fname, String cname) {
  return Container(
    margin: EdgeInsets.only(left: 8, right: 8, top: 8),
    height: 224,
    width: 176,
    decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black,width: 1),
        borderRadius: BorderRadius.circular(15)),
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                // color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            // Text(,style:TextStyle(fontWeight: FontWeight.w500,color: Colors.black) ,),
            Text(
              '$price',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color:Colors.green),
            ),
            Text(
              fname,
              style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),

            Text(
              cname,
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Container(
              margin: const EdgeInsets.only(top:24),
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.grey.shade50,

                  // border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 45,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Add to cart',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            )
          ],
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Icon(Icons.favorite_border_outlined),
        ),
      ],
    ),
  );
}

Container downbar() {
  return Container(
    height: 50,
    width: 380,
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
    ),
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 50),
        Icon(
          Icons.home,
          size: 30,
        ),
        SizedBox(width: 50),
        Icon(
          Icons.favorite_border_outlined,
          size: 30,
        ),
        SizedBox(width: 50),
        Icon(
          Icons.shopping_bag_outlined,
          size: 30,
        ),
        SizedBox(
          width: 50,
        ),
        Icon(
          Icons.history,
          size: 30,
        )
      ],
    ),
  );
}
