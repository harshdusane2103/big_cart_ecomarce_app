import 'package:big_cart_ecomarce_app/utils/list.dart';
import 'package:flutter/material.dart';
class cateScreen extends StatefulWidget {
  const cateScreen({super.key});

  @override
  State<cateScreen> createState() => _cateScreenState();
}

class _cateScreenState extends State<cateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap:
            () {
              Navigator.of(context).pop('/home');
            },child: Icon(Icons.arrow_back)),
        centerTitle:true,
        title: Text('Categories',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          children: [
            ...List.generate(iconlist.length, (index) => Container(
              margin: EdgeInsets.all(10),
              height:120,
              width:100,
              color:Colors.white,
              child: Column(
                children: [
                  Container(
                   margin: EdgeInsets.all(5),
                    height:75,
                    width: 75,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey.shade50),
                    alignment:Alignment.center,child: Image.asset(iconlist[index]['image']),

                  ),
                  Text(iconlist[index]['name'],style: TextStyle(fontSize:16),),
                ],
              ),
            )
            )
          ],

        ),
      ),
    );
  }
}
