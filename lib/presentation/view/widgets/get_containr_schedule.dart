

import 'package:flutter/material.dart';

import '../../../core/resource/val_app.dart';




Widget getContainer2 ( {  required String name}){


  return         Container(   padding: const EdgeInsets.all(ValApp.va15) ,margin: const EdgeInsets.symmetric( horizontal:  ValApp.va10),

  decoration: BoxDecoration(
  color: isTrue?Colors.grey: Colors.blue,
  borderRadius: BorderRadius.circular(ValApp.va5),


  ),
  child: Text( name,style: const TextStyle(   fontSize: ValApp.va18,fontWeight: FontWeight.bold),),
  );
}
var isTrue=true;