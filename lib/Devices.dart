// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  final String name;
  final String pathImage;
  final bool state;
  void Function(bool)? toggle;

  Devices({
    required this.name,
    required this.pathImage,
    required this.state,
    this.toggle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:this.state?Colors.black:Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              pathImage,
              height: 110,
              color: this.state? Colors.grey[200]:Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color:this.state? Colors.grey[200]:Colors.black),
                ),
                CupertinoSwitch(
                  value: this.state,
                  onChanged: toggle,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
