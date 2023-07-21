
import 'package:flutter/material.dart';

Widget cardContainer(  { required IconData icon, required String name}){


  return       Row(
    children: [
      Icon( icon ,color: Colors.greenAccent,),Text(name ,style: const TextStyle(color: Colors.white),)
    ],
  );
}