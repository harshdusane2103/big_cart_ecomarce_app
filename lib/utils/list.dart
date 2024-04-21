import 'package:flutter/material.dart';

List addresslist=[
  {
    'name':'Email Address',
    'icon':Icons.mail,
  },
  {
    'name':'Phone Number',
    'icon':Icons.call,
  },
  {
    'name':'Address',
    'icon':Icons.pin_drop,
  },
  {
    'name':'Zip code',
    'icon':Icons.crop_square,
  },
  {
    'name':'City',
    'icon':Icons.location_city,
  },

];



List iconlist=[
  {
    'name':'Vegtables',
    'image':'asstes/Images/le.png',
  },
  {
    'name':'Edible oil',
    'image':'asstes/Images/Oil.png',
  },
  {
     'name':'House Hold',
    'image':'asstes/Images/vcu.png',
  },
  {'name':'Beverages',
    'image':'asstes/Images/be.png',
  },
  {
    'name':'Grocery',
    'image':'asstes/Images/gr.png',
  },
  {
    'name':'Baby Care',
    'image':'asstes/Images/babycare.png',
  },
  {
    'name':'Fruits',
    'image':'asstes/Images/apple.png',
  }
];

bool boolName = true;

List imgColunmfirstlist=[
  {'price':'\$7',
    'image':'asstes/Images/ac.jpeg',
    'fname':'Avacoda',
    'cname':'2.0 lbs',
    'quanity':1,
    'cartBool' : false,

  },
  { 'price':'\$8',
    'image':'asstes/Images/broccoli.jpeg',
    'fname':'Fresh B roccoli',
    'cname':'1 Kg',
  'quanity':1,
    'cartBool' : false,
  },
  { 'price':'\$11',
    'image':'asstes/Images/grapes.jpg',
    'fname':'Black Grapes',
    'cname':'5.0 lbs',
    'quanity':1,
    'cartBool' : false,
  },
  { 'price':'\$9',
    'image':'asstes/Images/pro.jpeg',
    'fname':'Pomegranate',
    'cname':'1.50 lbs',
    'quanity':1,
    'cartBool' : false,
  },

];
List imgColunmsecondlist=[
  { 'price':'\$8',
    'image':'asstes/Images/kiwisec.jpg',
    'fname':'Fresh Kiwi',
    'cname':'2.0 lbs',
    'quanity':1,
    'cartBool' : false,
  },
  { 'price':'\$9',
    'image':'asstes/Images/lmeon.jpg',
    'fname':'Fresh Lemon',
    'cname':'2 pis',
    'quanity':1,
    'cartBool' : false,
  },
  { 'price':'\$6',
    'image':'asstes/Images/peach.jpeg',
    'fname':'Fresh Peach',
    'cname':'dozon',
    'quanity':1,
    'cartBool' : false,
  },
  { 'price':'\$9',
    'image':'asstes/Images/pine.jpeg',
    'fname':'Pineapple',
    'cname':'1.50 lbs',
    'quanity':1,
    'cartBool' : false,
  },

];
// SelectIndex=0;
List cartlist=[];
int selectindex=0;
double sliderange=0;


// int selectindex=-1;

//
// List.generate(imgColunmfirstlist.length, (index) => productBox()),
//
// productBox(){
//   ontap(){
//     if(boolName==true){
// imgColunmfirstlist[index];
// }
//     else{
// imgColunmsecondlist[index];
// }
// }
// }